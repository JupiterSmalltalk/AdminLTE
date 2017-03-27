rendering-widgets-login
renderLoginWidgetErrorOn: canvas
  self loginError
    ifNotNil: [ :errorMessage | 
      canvas tbsPanel
        beDanger;
        with: [ 
              canvas tbsPanelHeading with: [ canvas tbsPanelTitle: 'Login Failed' ].
              canvas tbsPanelBody with: [ canvas text: errorMessage ] ].
      self loginError: nil ]