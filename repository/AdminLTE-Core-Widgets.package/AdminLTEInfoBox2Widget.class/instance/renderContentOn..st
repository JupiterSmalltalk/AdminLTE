rendering
renderContentOn: canvas
  canvas div
    class: 'info-box';
    class: self backgroundColorClass;
    with: [ 
          canvas span
            class: 'info-box-icon';
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
                  canvas
                    tbsProgress: [ canvas tbsProgressbar valueNow: self progressValue ].
                  canvas span
                    class: 'progress-description';
                    with: [ self renderIfValueFromObjectOrBlock: self progressDescription on: canvas ] ] ]