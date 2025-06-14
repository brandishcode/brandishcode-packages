{
  self,
  nixpkgs,
  flake-utils,
  nixvim,
  ...
}:

flake-utils.lib.eachDefaultSystem (
  system:
  let
    pkgs = import nixpkgs {
      inherit system;
      overlays = [ self.overlays.default ];
    };
  in
  {
    packages = {
      neovim = pkgs.callPackage ./neovim { inherit nixvim; };
    };
  }
)
