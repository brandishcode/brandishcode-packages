{
  pkgs,
  system,
  nixvim,
  nixessity,
  jsSupport ? false,
  javaSupport ? false,
  nixessityConfig ? null,
  treefmt ? pkgs.treefmt,
  ...
}:

let
  nixvimPkgs = nixvim.legacyPackages.${system};
in
nixvimPkgs.makeNixvimWithModule {
  inherit pkgs;
  module = {
    imports = [ ./modules.nix ];
  };
  extraSpecialArgs = with pkgs; {
    inherit
      jsSupport
      javaSupport
      jdt-language-server
      jdk17
      jdk24
      lombok
      nixessity
      nixessityConfig
      treefmt
      ;
  };
}
