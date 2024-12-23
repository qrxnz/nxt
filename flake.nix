{
  inputs.flake-utils.url = "github:numtide/flake-utils";
  outputs = {
    self,
    nixpkgs,
    flake-utils,
  }:
    flake-utils.lib.eachDefaultSystem (
      system: let
        pkgs = import nixpkgs {inherit system;};
        my-name = "nxt";
        my-buildInputs = with pkgs; [
          gum
        ];
        nxt = (pkgs.writeScriptBin my-name (builtins.readFile ./nxt.sh)).overrideAttrs (old: {
          buildCommand = "${old.buildCommand}\n patchShebangs $out";
        });
      in rec {
        defaultPackage = packages.qkit;
        packages.qkit = pkgs.symlinkJoin {
          name = my-name;
          paths = [nxt] ++ my-buildInputs;
          buildInputs = [pkgs.makeWrapper];
          postBuild = "wrapProgram $out/bin/${my-name} --prefix PATH : $out/bin";
        };
        devShells.default = pkgs.mkShell {
          buildInputs = with pkgs; [
            treefmt2
            shfmt
            mdformat
            alejandra
          ];
        };
      }
    );
}
