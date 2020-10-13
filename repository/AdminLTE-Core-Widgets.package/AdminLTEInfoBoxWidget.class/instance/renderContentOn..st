rendering
renderContentOn: canvas
  canvas div
    class: 'info-box';
    with: [ 
          canvas span
            class: 'info-box-icon';
            class: self backgroundColorClass;
            with: [ self renderIcon: self icon color: self iconColor on: canvas ].
          canvas div
            class: 'info-box-content';
            with: [ 
                  canvas span
                    class: 'info-box-text';
                    with: [ self renderIfValueFromObjectOrBlock: self label on: canvas ].
                  canvas span
                    class: 'info-box-number';
                    with: [ self renderIfValueFromObjectOrBlock: self number on: canvas ].
                  self renderInfoBoxActionsOn: canvas ] ]