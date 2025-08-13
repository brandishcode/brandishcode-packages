{
  lib,
  jsSupport,
  javaSupport,
  cppSupport,
  ...
}:

{
  imports =
    [
      ./config
      ./languages/lua
    ]
    ++ lib.optionals jsSupport [ ./languages/javascript ]
    ++ lib.optionals javaSupport [ ./languages/java ]
    ++ lib.optionals cppSupport [ ./languages/cpp ];
}
