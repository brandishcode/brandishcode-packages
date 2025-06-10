{ flake-utils, ... }:

flake-utils.lib.eachDefaultSystemPassThrough (system:

{
  overlays.default = import ./default;
})
