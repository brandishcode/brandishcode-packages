{
  vimUtils,
  vimPlugins,
  fetchFromGitHub,
  ...
}:

vimUtils.buildVimPlugin rec {
  name = "nixessity";
  pname = name;
  version = "48bb0b3dfe0a20f9274361a365e5ad5acef2f4c0";
  src = fetchFromGitHub {
    owner = "brandishcode";
    repo = "nixessity";
    rev = version;
    hash = "sha256-myJ1UqB/5QYbV8XBOp0HDVIpG97Hy3EZdShivnIqdBo=";
  };
  dependencies = with vimPlugins; [
    plenary-nvim
    sqlite-lua
  ];
}
