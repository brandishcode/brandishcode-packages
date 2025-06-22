{
  vimUtils,
  vimPlugins,
  fetchFromGitHub,
  ...
}:

vimUtils.buildVimPlugin rec {
  name = "nixessity";
  pname = name;
  version = "9bc566940c5044d484c0f412764e08c13206f744";
  src = fetchFromGitHub {
    owner = "brandishcode";
    repo = "nixessity";
    rev = version;
    hash = "sha256-f7MHoql6OI9UNOLVyg+cNIZUFizsG1rM/hvm+AI6hAM=";
  };
  dependencies = with vimPlugins; [ plenary-nvim sqlite-lua ];
}
