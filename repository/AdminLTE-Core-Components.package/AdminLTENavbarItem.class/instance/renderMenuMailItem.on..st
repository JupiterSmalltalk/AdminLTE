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
                at: #'tagText'
                ifPresent: [ :tagText | 
                  | tag |
                  tag := canvas small.
                  self
                    color: (menuItem at: #'tagColor' ifAbsent: [ nil ])
                    tag: tag.
                  tag
                    with: [ 
                      self
                        renderIcon:
                          (menuItem at: #'tagIcon' ifAbsent: [ #'clockOutlined' ])
                        color: nil
                        on: canvas.
                      canvas space.
                      self renderIfValueFromObjectOrBlock: tagText on: canvas ] ] ].
      canvas paragraph
        with: [ self renderIfValueFromObjectOrBlock: (menuItem at: #'text') on: canvas ] ]