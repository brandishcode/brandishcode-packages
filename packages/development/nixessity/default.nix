{
  vimUtils,
  vimPlugins,
  fetchFromGitHub,
  ...
}:

vimUtils.buildVimPlugin rec {
  name = "nixessity";
  pname = name;
  version = "a5016d8b32e6ecd613d6571c70615c15df3136e4";
  src = fetchFromGitHub {
    owner = "brandishcode";
    repo = "nixessity";
    rev = version;
    hash = "sha256-MQqfCJ1k4xk3y6ZqyQTgmatYJyELG9qJP5/HdHcc+nY=";
  };
  dependencies = with vimPlugins; [
    plenary-nvim
    sqlite-lua
  ];
}
