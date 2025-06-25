{
  vimUtils,
  vimPlugins,
  fetchFromGitHub,
  ...
}:

vimUtils.buildVimPlugin rec {
  name = "nixessity";
  pname = name;
  version = "e1b15fae11b61233090ff3a707f5d1272d80847a";
  src = fetchFromGitHub {
    owner = "brandishcode";
    repo = "nixessity";
    rev = version;
    hash = "sha256-tbJj4lA7kkbVUZ2LNfQ/U+kYEO8XLQ9qmGv+78h8x48=";
  };
  dependencies = with vimPlugins; [
    plenary-nvim
    sqlite-lua
  ];
}
