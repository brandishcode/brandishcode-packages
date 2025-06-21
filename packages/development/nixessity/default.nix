{
  vimUtils,
  vimPlugins,
  fetchFromGitHub,
  ...
}:

vimUtils.buildVimPlugin {
  name = "nixessity";
  src = fetchFromGitHub {
    owner = "brandishcode";
    repo = "nixessity";
    rev = "9bf06434083ce215d2cabacef21b5ff32517cc86";
    hash = "sha256-EFd6xYY0PuUmbG2kLbM4T3Sm3MHMZB7OI6sWcpA3WGs=";
  };
  dependencies = [ vimPlugins.plenary-nvim ];
  nvimSkipModules = [ "config" ];
}
