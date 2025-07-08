{
  description = "Nixos flake outputs: packages";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    nixvim.url = "github:nix-community/nixvim";
    bcfmt.url = "github:brandishcode/brandishcode-formatter";
    nixessitycore.url = "github:brandishcode/nixessitycore";
  };

  outputs =
    inputs@{
      flake-utils,
      ...
    }:
    flake-utils.lib.meld inputs [
      ./packages/development
      ./overlays
      ./formatter
    ];
}
