{
  vimUtils,
  vimPlugins,
  fetchFromGitHub,
  ...
}:

vimUtils.buildVimPlugin rec {
  name = "nixessity";
  pname = name;
  version = "1.0.1-alpha";
  src = fetchFromGitHub {
    owner = "brandishcode";
    repo = "nixessity";
    rev = "v${version}";
    hash = "sha256-cA0wsiLqSMbQJ9iot0Bfg16XueitkB5bC3xwZG4vB/g=";
  };
  dependencies = [ vimPlugins.plenary-nvim ];
}
