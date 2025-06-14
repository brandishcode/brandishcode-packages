{ flake-utils, bcfmt, ... }:

flake-utils.lib.eachDefaultSystemPassThrough (system:

{
  overlays.default = (import ./default { bcfmt = bcfmt.packages.${system}; });
})
