rendering-widgets-login
renderLoginWidgetOn: canvas
  canvas div
    class: 'login-box';
    with: [ 
          canvas div
            class: 'login-logo';
            with: [ self renderLogoLargeOn: canvas ].
          canvas div
            class: 'login-box-body';
            with: [ 
                  self
                    renderLoginWidgetMessageOn: canvas;
                    renderLoginWidgetErrorOn: canvas;
                    renderLoginWidgetFormOn: canvas ] ]