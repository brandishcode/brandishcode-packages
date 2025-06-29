{
  vimUtils,
  vimPlugins,
  fetchFromGitHub,
  ...
}:

vimUtils.buildVimPlugin rec {
  name = "nixessity";
  pname = name;
  version = "c070f93268671c49cefb9730a78b920da3642c6a";
  src = fetchFromGitHub {
    owner = "brandishcode";
    repo = "nixessity";
    rev = version;
    hash = "sha256-jY5a6FeXZRv8IbMk86GvuH0DZVTW5dI2tTcKZu/ZJro=";
  };
  dependencies = with vimPlugins; [
    plenary-nvim
    sqlite-lua
  ];
}
