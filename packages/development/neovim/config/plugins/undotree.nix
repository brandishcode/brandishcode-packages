{
  plugins = {
    undotree.enable = true;
  };

  # keymaps = [
  #   {
  #     key = "<leader>ut";
  #     action = "<cmd>UndotreeToggle<cr>";
  #   }
  # ];

  extraConfigVim = ''
      if has("persistent_undo")
       let target_path = expand('~/.undodir')

        " create the directory and any parent directories
        " if the location does not exist.
        if !isdirectory(target_path)
            call mkdir(target_path, "p", 0700)
        endif

        let &undodir=target_path
        set undofile
    endif
  '';
}
