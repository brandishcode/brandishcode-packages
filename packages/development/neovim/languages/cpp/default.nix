{ pkgs, ... }:

{
  extraPackages = with pkgs; [
    clang-tools
    cmake-format
    glsl_analyzer
  ];
  extraConfigLuaPost = with pkgs; ''
    vim.filetype.add({
      extension = {
        vert = "vert",
        frag = "frag"
      }
    })
    require 'lspconfig'.glsl_analyzer.setup({ 
      cmd = { "${glsl_analyzer}/bin/glsl_analyzer" }
    })
  '';
  plugins.lsp.servers = {
    clangd.enable = true;
  };
  plugins.conform-nvim = {
    settings.formatters_by_ft = {
      cpp = with pkgs; [ clang-format ];
      cmake = with pkgs; [ cmake-format ];
    };
  };
}
