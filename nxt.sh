#!/bin/env bash

android() {
  nix flake init -t github:MordragT/nix-templates#android
}

angular() {
  nix flake init -t github:MordragT/nix-templates#angular
}

cpp() {
  nix flake init -t github:MordragT/nix-templates#cpp
}

deno() {
  nix flake init -t github:MordragT/nix-templates#deno
}

kotlin() {
  nix flake init -t github:MordragT/nix-templates#kotlin
}

mdbook() {
  nix flake init -t github:MordragT/nix-templates#deno
}

python-micromamba() {
  nix flake init -t github:MordragT/nix-templates#python-micromamba
}

python-poetry() {
  nix flake init -t github:MordragT/nix-templates#python-poetry
}

python-venv() {
  nix flake init -t github:MordragT/nix-templates#python-poetry
}

python() {
  nix flake init -t github:MordragT/nix-templates#python
}

rust-nightly() {
  nix flake init -t github:MordragT/nix-templates#rust-nightly
}

rust-stable() {
  nix flake init -t github:MordragT/nix-templates#rust-stable
}

slides-fh-aachen() {
  nix flake init -t github:MordragT/nix-templates#slides-fh-aachen
}

slides() {
  nix flake init -t github:MordragT/nix-templates#slides
}

stm32-platformio() {
  nix flake init -t github:MordragT/nix-templates#stm32-platformio
}

svelte-tailwind() {
  nix flake init -t github:MordragT/nix-templates#svelte-tailwind
}

tauri() {
  nix flake init -t github:MordragT/nix-templates#tauri
}

tex() {
  nix flake init -t github:MordragT/nix-templates#tex
}

trivial() {
  nix flake init -t github:MordragT/nix-templates#trivial
}

typst() {
  nix flake init -t github:MordragT/nix-templates#typst
}

run=$(gum choose "android" "angular" "cpp" "deno" "kotlin" "mdbook" "python-micromamba" "python-poetry" "python-venv" "python" "rust-nightly" "rust-stable" "slides-fh-aachen" "slides" "stm32-platformio" "svelte-tailwind" "tauri" "tex" "trivial" "typst") &&
  $run
