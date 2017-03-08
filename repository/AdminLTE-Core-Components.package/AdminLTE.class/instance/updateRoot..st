rendering
updateRoot: anHtmlRoot
  super updateRoot: anHtmlRoot.
  anHtmlRoot
    adminLTEFixedHeaderAndSidebar;
    adminLTECollapsedSidebar;
    adminLTESkinBlue.
  user
    ifNil: [ anHtmlRoot bodyAttributes addClass: 'hold-transition login-page' ]