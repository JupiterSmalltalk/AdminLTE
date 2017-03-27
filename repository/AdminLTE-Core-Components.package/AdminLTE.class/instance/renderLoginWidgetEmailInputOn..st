rendering-widgets-login
renderLoginWidgetEmailInputOn: canvas
  canvas tbsFormGroup
    class: 'has-feedback';
    with: [ 
          canvas emailInput
            on: #'userName' of: self;
            tbsFormControl;
            placeholder: 'Email'.
          canvas span
            class: 'form-control-feedback';
            with: [ 
                  (canvas tag: 'i')
                    fontAwesome;
                    fontAwesomeEnvelopeIcon ] ]