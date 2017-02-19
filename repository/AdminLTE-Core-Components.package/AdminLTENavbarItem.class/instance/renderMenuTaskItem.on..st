rendering-items
renderMenuTaskItem: menuItem on: canvas
  | anchorTag progressValue |
  progressValue := menuItem at: #'progressValue' ifAbsent: [ 0 ].
  anchorTag := canvas anchor.
  menuItem
    at: #'callback'
    ifPresent: [ :callback | anchorTag callback: callback ].
  anchorTag
    with: [ 
      canvas heading
        level3;
        with: [ 
              self
                renderIfValueFromObjectOrBlock:
                  (menuItem at: #'text' ifAbsent: [ nil ])
                on: canvas.
              canvas small
                tbsPullRight;
                with: progressValue asString , '%' ].
      canvas tbsProgress
        class: 'xs';
        with: [ 
              canvas div
                class: 'progress-bar progress-bar-aqua';
                role: 'progressbar';
                style: 'width: ' , progressValue asString , '%;';
                attributeAt: 'aria-valuenow' put: progressValue;
                attributeAt: 'aria-valuemin' put: 0;
                attributeAt: 'aria-valuemax' put: 100;
                with: [ canvas span tbsScreenReaderOnly with: 'Progress ' , progressValue asString , '%' ] ] ]