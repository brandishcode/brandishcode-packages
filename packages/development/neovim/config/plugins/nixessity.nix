{
  lib,
  nixessity,
  nixessityConfig,
  ...
}:

let
  luaConfig = lib.nixvim.lua.toLuaObject (
    if nixessityConfig == null then { projectdirs = ""; } else nixessityConfig
  );
in
{
  extraPlugins = [ nixessity ];
  extraConfigLua = ''
    local config = ${luaConfig}

    if not config.projectsdir then
      config.projectsdir = vim.fn.fnamemodify(vim.fn.getcwd(), ':h')
    end

    require'nixessity'.setup(config)
  '';
}
