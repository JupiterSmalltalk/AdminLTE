rendering-items
renderMenuMailItem: menuItem on: canvas
  | anchorTag |
  anchorTag := canvas anchor.
  menuItem
    at: #'callback'
    ifPresent: [ :callback | anchorTag callback: callback ].
  anchorTag
    with: [ 
      canvas div
        tbsPullLeft;
        with: [ 
              canvas tbsImage
                beCircle;
                url: (self stringFromObjectOrBlock: (menuItem at: #'imageUrl')) ].
      canvas heading
        level4;
        with: [ 
              self renderIfValueFromObjectOrBlock: (menuItem at: #'heading') on: canvas.
              menuItem
                at: #'labelText'
                ifPresent: [ :labelText | 
                  | tag |
                  tag := canvas small.
                  self
                    color: (menuItem at: #'labelColor' ifAbsent: [ nil ])
                    tag: tag.
                  tag
                    with: [ 
                      self
                        renderIcon:
                          (menuItem at: #'labelIcon' ifAbsent: [ #'clockOutlined' ])
                        color: nil
                        on: canvas.
                      canvas space.
                      self renderIfValueFromObjectOrBlock: labelText on: canvas ] ] ].
      canvas paragraph
        with: [ self renderIfValueFromObjectOrBlock: (menuItem at: #'text') on: canvas ] ]