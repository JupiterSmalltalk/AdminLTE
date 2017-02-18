install
install
  "Install the example"

  | application |
  application := WAAdmin
    register: self
    asApplicationAt: 'examples/AdminLTEExample'.
  application
    addLibrary: JQ2DevelopmentLibrary;
    addLibrary: TBSDevelopmentLibrary;
    addLibrary: TBSJasnyDevelopmentLibrary;
    addLibrary: FAWDevelopmentLibrary;
    addLibrary: JQSlimScrollLibrary;
    addLibrary: AdminLTEFileLibrary