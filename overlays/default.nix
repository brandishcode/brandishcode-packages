{ self, flake-utils, ... }:

flake-utils.lib.eachDefaultSystemPassThrough (system:

{
  overlays.default = (import ./default) { development = self.packages.${system}.development; };
})
