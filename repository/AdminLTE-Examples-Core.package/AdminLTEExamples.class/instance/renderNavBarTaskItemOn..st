rendering-header
renderNavBarTaskItemOn: canvas
  canvas anchor
    with: [ 
      canvas heading
        level3;
        with: [ 
              canvas text: 'Design some buttons'.
              canvas small
                tbsPullRight;
                with: '20%' ].
      canvas tbsProgress
        class: 'xs';
        with: [ 
              canvas div
                class: 'progress-bar progress-bar-aqua';
                role: 'progressbar';
                style: 'width: 20%;';
                attributeAt: 'aria-valuenow' put: 20;
                attributeAt: 'aria-valuemin' put: 0;
                attributeAt: 'aria-valuemax' put: 100;
                with: [ canvas span tbsScreenReaderOnly with: 'Progress 20%' ] ] ]