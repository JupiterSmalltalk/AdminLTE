rendering-widgets-login
renderLoginWidgetPasswordInputOn: canvas
  canvas tbsFormGroup
    class: 'has-feedback';
    with: [ 
          canvas passwordInput
            tbsFormControl;
            placeholder: 'Password'.
          canvas span
            class: 'form-control-feedback';
            with: [ 
                  (canvas tag: 'i')
                    fontAwesome;
                    fontAwesomeLockIcon ] ]