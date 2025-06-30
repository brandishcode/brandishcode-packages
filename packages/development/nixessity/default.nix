{
  vimUtils,
  vimPlugins,
  fetchFromGitHub,
  ...
}:

vimUtils.buildVimPlugin rec {
  name = "nixessity";
  pname = name;
  version = "d23a6bfc0314bd81f39f841a6300b37146dcfbdc";
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
