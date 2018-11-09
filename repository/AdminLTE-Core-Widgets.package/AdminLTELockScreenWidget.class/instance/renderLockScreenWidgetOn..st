rendering
renderLockScreenWidgetOn: canvas
  canvas div
    class: 'lockscreen-wrapper';
    with: [ 
          canvas div
            class: 'lockscreen-logo';
            with: [ self renderLockScreenLogoOn: canvas ].
          canvas div
            class: 'lockscreen-name';
            with: [ canvas text: self userName ].
          canvas div
            class: 'lockscreen-item';
            with: [ 
                  canvas div
                    class: 'lockscreen-image';
                    with: [ self renderLockScreenImageOn: canvas ].
                  self renderPasswordFormOn: canvas ].
          canvas div
            class: 'help-block';
            class: 'text-center';
            with: [ canvas text: 'Enter your password to continue your session' ].
          canvas div
            class: 'text-center';
            with: [ 
                  canvas anchor
                    callback: [ self answer: nil ];
                    with: 'Or sign in as a different user' ].
          self renderLockScreenFooterOn: canvas ]