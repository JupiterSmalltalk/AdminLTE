rendering
updateRoot: anHtmlRoot
  super updateRoot: anHtmlRoot.
  anHtmlRoot
    adminLTEUseGoogleFonts;
    adminLTEFixedHeaderAndSidebar;
    adminLTESkinBlue.
  (self session respondsTo: #'isLoggedIn')
    ifTrue: [ 
      self session isLoggedIn
        ifFalse: [ anHtmlRoot bodyAttributes addClass: 'hold-transition login-page' ] ]