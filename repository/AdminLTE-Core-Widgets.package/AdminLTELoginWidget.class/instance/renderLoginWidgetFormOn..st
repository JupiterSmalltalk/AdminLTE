rendering
renderLoginWidgetFormOn: canvas
  canvas tbsForm
    with: [ 
      self
        renderLoginWidgetEmailInputOn: canvas;
        renderLoginWidgetPasswordInputOn: canvas;
        renderLoginWidgetSignInRowOn: canvas ]