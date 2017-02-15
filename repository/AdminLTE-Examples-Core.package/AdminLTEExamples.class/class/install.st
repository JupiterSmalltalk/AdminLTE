install
install
  "Install the examples"

  | application |
  application := WAAdmin register: self asApplicationAt: 'examples/AdminLTE'.
  application
    addLibrary: JQ2DevelopmentLibrary;
    addLibrary: TBSDevelopmentLibrary;
    addLibrary: TBSJasnyDevelopmentLibrary;
    addLibrary: FAWDevelopmentLibrary;
    addLibrary: JQSlimScrollLibrary;
    addLibrary: AdminLTEFileLibrary