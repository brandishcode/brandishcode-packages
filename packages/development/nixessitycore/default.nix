{
  luaPackages,
  fetchFromGitHub,
}:

luaPackages.buildLuarocksPackage {
  pname = "nixessitycore";
  version = "1.0.1-0";

  src = fetchFromGitHub {
    owner = "brandishcode";
    repo = "nixessitycore";
    rev = "v1.0.1-alpha";
    hash = "sha256-+Lzrdnqz47CCTiRXbKKcW2GynQCqnpkYxiEUf+takLM=";
  };

  propagatedBuildInputs = [
    luaPackages.luv
    luaPackages.lua-cjson
  ];
}
