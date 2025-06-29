{
  plugins.treesitter = {
    enable = true;
    settings.highlight = {
      enable = true;
    };
    settings.incremental_selection = {
      enable = true;
      keymaps = {
        init_selection = "gnn";
        node_incremental = "grn";
        scope_incremental = "grc";
        node_decremental = "grm";
      };
    };
  };

  extraConfigVim = ''
    set foldmethod=expr
    set foldexpr=nvim_treesitter#foldexpr()
    set nofoldenable
  '';
}
