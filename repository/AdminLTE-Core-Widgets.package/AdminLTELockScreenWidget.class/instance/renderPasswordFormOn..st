rendering
renderPasswordFormOn: canvas
  canvas form
    class: 'lockscreen-credentials';
    with: [ 
          canvas tbsFormGroup
            with: [ 
              canvas passwordInput
                callback: [ :value | self password: value ];
                tbsFormControl;
                placeholder: 'password'.
              canvas tbsInputGroupButton
                with: [ 
                  canvas tbsButton
                    callback: [ 
                          self validateUserName: self userName password: self password.
                          self password: nil ];
                    with: [ 
                          (canvas tag: 'i')
                            fontAwesome;
                            fontAwesomeArrowRightIcon ] ] ] ]