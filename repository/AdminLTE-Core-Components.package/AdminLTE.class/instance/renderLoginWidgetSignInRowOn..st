rendering-widgets-login
renderLoginWidgetSignInRowOn: canvas
  canvas tbsRow
    with: [ 
      canvas tbsColumn
        extraSmallSize: 8;
        with: [ 
              canvas div
                class: 'checkbox';
                with: [ 
                      canvas label
                        with: [ 
                          canvas checkbox on: #'rememberMe' of: self.
                          canvas text: 'Remember me' ] ] ].
      canvas tbsColumn
        extraSmallSize: 4;
        with: [ 
              canvas tbsButton
                bePrimary;
                beBlock;
                callback: [ 
                      self validateUserName: self userName password: self password.
                      self password: nil ];
                with: [ canvas text: 'Sign In' ] ] ]