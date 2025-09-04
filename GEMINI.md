# Project Overview

This project, `nxt`, is a command-line wrapper for `nix-templates`. It simplifies the process of creating new projects from a predefined set of templates by providing an interactive menu using `gum`. The core logic is implemented in a single shell script, `nxt.sh`, and the project is packaged using Nix Flakes.

## Building and Running

### Running

To run the project without a permanent installation, use the following command:

```sh
nix run github:qrxnz/nxt
```

### Building

To build the project from source, you can use the standard Nix build process:

```sh
nix build
```

This will create a `result` symlink in the current directory containing the built package.

### Development

To enter a development shell with all the necessary dependencies, run:

```sh
nix develop
```

## Development Conventions

The project uses `treefmt` for code formatting. The following formatters are configured in `treefmt.toml`:

*   `alejandra` for Nix code
*   `mdformat` for Markdown
*   `shfmt` for shell scripts

To format the entire project, run:
```sh
treefmt
```
