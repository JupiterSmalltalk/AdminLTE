rendering-widgets-login
renderLoginWidgetErrorOn: canvas
  canvas tbsPanel
    beDanger;
    with: [ 
          canvas tbsPanelHeading with: [ canvas tbsPanelTitle: 'Login Failed' ].
          canvas tbsPanelBody
            with: [ canvas text: 'The email / password combination was not found' ] ]