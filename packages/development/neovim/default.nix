{
  pkgs,
  system,
  nixvim,
  jsSupport ? false,
  javaSupport ? false,
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
      ;
  };
}
