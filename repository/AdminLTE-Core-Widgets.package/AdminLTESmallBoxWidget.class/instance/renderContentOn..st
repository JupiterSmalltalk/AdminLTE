rendering
renderContentOn: canvas
  canvas div
    class: 'small-box';
    class: self backgroundColorClass;
    with: [ 
          canvas div
            class: 'inner';
            with: [ 
                  canvas heading
                    level3;
                    with: [ self renderIfValueFromObjectOrBlock: self number on: canvas ].
                  canvas paragraph
                    with: [ self renderIfValueFromObjectOrBlock: self label on: canvas ] ].
          canvas div
            class: 'icon';
            with: [ self renderIcon: self icon color: self iconColor on: canvas ].
          canvas div
            class: 'small-box-footer';
            with: [ self renderIfValueFromObjectOrBlock: self footer on: canvas ] ]