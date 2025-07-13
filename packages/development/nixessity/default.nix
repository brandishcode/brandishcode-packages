{
  vimUtils,
  vimPlugins,
  fetchFromGitHub,
  ...
}:

let
  sources = import ./npins;
  version = sources.nixessity.revision;
  hash = sources.nixessity.hash;
in
vimUtils.buildVimPlugin rec {
  name = "nixessity";
  pname = name;
  inherit version;
  src = fetchFromGitHub {
    owner = "brandishcode";
    repo = "nixessity";
    rev = version;
    hash = "sha256-tl3LP3WjHIglC65JoaGwCWr+0fhvduAKz0Ulkdxk8yw=";
  };
  dependencies = with vimPlugins; [
    plenary-nvim
    sqlite-lua
  ];
}
