(builtins.getFlake "/development/nixos/nixos-configuration")
.outputs.packages.x86_64-linux.neovim.override
  {
    javaSupport = true;
  }
