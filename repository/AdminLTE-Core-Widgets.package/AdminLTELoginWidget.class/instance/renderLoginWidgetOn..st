rendering
renderLoginWidgetOn: canvas
  canvas div
    class: 'login-box';
    with: [ 
          canvas div
            class: 'login-logo';
            with: [ self renderLoginWidgetLogoOn: canvas ].
          canvas div
            class: 'login-box-body';
            with: [ 
                  self
                    renderLoginWidgetMessageOn: canvas;
                    renderLoginWidgetErrorOn: canvas;
                    renderLoginWidgetFormOn: canvas ] ]