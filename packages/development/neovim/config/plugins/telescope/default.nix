{ pkgs, ... }:

{
  # needed for telescope grep_string
  extraPackages = with pkgs; [
    ripgrep
    # delta
  ];

  plugins.telescope = {
    enable = true;
    extensions.undo = {
      enable = true;
      settings = {
        entry_format = "state #$ID";
        mappings = {
          i = {
            "<c-cr>" = "require('telescope-undo.actions').restore";
            "<cr>" = "require('telescope-undo.actions').yank_additions";
            "<s-cr>" = "require('telescope-undo.actions').yank_deletions";
          };
          n = {
            Y = "require('telescope-undo.actions').yank_deletions";
            u = "require('telescope-undo.actions').restore";
            y = "require('telescope-undo.actions').yank_additions";
          };
        };
        # side_by_side = true;
        time_format = "!%Y-%m-%dT%TZ";
        # use_custom_command = [
        #   "bash"
        #   "-c"
        #   "echo '$DIFF' | delta"
        # ];
        use_delta = false;
        vim_diff_opts = {
          ctxlen = 8;
        };
      };
    };
  };

  imports = [ ./keymappings.nix ];
}
