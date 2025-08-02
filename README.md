# nxt

## ✒️ Description

> Simple wrapper for nix-templates created using nix & charmbracelet's gum

`nxt` was created to facilitate the creation of projects using [nix-templates](https://github.com/MordragT/nix-templates)

https://github.com/user-attachments/assets/260adff8-15ae-407b-b7e2-7231be706862

## ⚒️  Installation

### Try it without installing

```sh
nix run github:qrxnz/nxt
```

### Installation

Add input in your flake like:

```nix
{
 inputs = {
   nxt = {
     url = "github:qrxnz/nxt";
     inputs.nixpkgs.follows = "nixpkgs";
   };
 };
}
```

With the input added you can reference it directly:

```nix
{ inputs, system, ... }:
{
  # NixOS
  environment.systemPackages = [ inputs.nxt.packages.${pkgs.system}.default ];
  # home-manager
  home.packages = [ inputs.nxt.packages.${pkgs.system}.default ];
}
```

or

You can install this package imperatively with the following command:

```nix
nix profile install github:qrxnz/nxt
```

## 🗒️ Credits

### ❤️ Special thanks

To [Thomas Wehmöller](https://github.com/MordragT) for the [nix-templates](https://github.com/MordragT/nix-templates)
