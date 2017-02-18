rendering-items
renderMenuNotificationItem: menuItem on: canvas
  | anchorTag |
  anchorTag := canvas anchor.
  menuItem
    at: #'callback'
    ifPresent: [ :callback | anchorTag callback: callback ].
  anchorTag
    with: [ 
      self
        renderIcon: (menuItem at: #'icon' ifAbsent: [ #'warning' ])
        color: (menuItem at: #'iconColor' ifAbsent: [ nil ])
        on: canvas.
      self
        renderIfValueFromObjectOrBlock: (menuItem at: #'text' ifAbsent: [ nil ])
        on: canvas ]