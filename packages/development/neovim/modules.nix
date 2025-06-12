{
  lib,
  jsSupport,
  javaSupport,
  ...
}:

{
  imports =
    [
      ./config
      ./languages/lua
    ]
    ++ lib.optionals jsSupport [ ./languages/javascript ]
    ++ lib.optionals javaSupport [ ./languages/java ];
}
