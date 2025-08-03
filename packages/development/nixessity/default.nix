{
  vimUtils,
  vimPlugins,
  fetchFromGitHub,
  ...
}:

let
  sources = import ./npins;
  version = sources.nixessity.revision;
in
vimUtils.buildVimPlugin rec {
  name = "nixessity";
  pname = name;
  inherit version;
  src = fetchFromGitHub {
    owner = "brandishcode";
    repo = "nixessity";
    rev = version;
    hash = "sha256-rhO18pSBkLG+MvbmFpYQGxhbXBmhCuWek+TO5kAvLuA=";
  };
  dependencies = with vimPlugins; [
    plenary-nvim
    sqlite-lua
  ];
}
