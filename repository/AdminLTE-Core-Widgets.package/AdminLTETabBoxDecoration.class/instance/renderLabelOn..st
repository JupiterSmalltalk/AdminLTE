rendering
renderLabelOn: canvas
  canvas tbsNavItem
    tbsPullLeft;
    class: 'header';
    with: [ 
          self icon
            ifNotNil: [ 
              self renderIcon: self icon color: self iconColor on: canvas.
              canvas space ].
          self renderIfValueFromObjectOrBlock: self label on: canvas ]