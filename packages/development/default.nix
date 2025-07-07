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
      default = self.outputs.packages.${system}.neovim;
      nixessity = pkgs.callPackage ./nixessity { };
      nixessitycore = pkgs.callPackage ./nixessitycore { };
      neovim = pkgs.callPackage ./neovim {
        inherit nixvim;
        nixessity = self.packages.${system}.nixessity;
      };
    };
  }
)
