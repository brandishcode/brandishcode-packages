{
  plugins.lsp = {
    enable = true;
    servers = {
      lua_ls = {
        enable = true;
        onAttach.function = builtins.readFile ./lua_ls.lua;
      };
    };
  };
}
