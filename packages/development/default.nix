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
      nixessity = pkgs.callPackage ./nixessity { };
      neovim = pkgs.callPackage ./neovim {
        inherit nixvim;
        nixessity = self.packages.${system}.nixessity;
      };
    };
  }
)
