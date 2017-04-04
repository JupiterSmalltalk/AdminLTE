rendering
renderTab: tab on: canvas
  canvas tbsNavItem
    beActiveIf: (self isActive: tab);
    with: [ 
          canvas anchor
            callback: [ 
                  self setActive: tab.
                  (tab at: #'callback') value ];
            with: [ 
                  (tab at: #'icon')
                    ifNotNil: [ 
                      self renderIcon: (tab at: #'icon') color: self iconColor on: canvas.
                      canvas space ].
                  self
                    renderIfValueFromObjectOrBlock: (tab at: #'label')
                    on: canvas ] ]