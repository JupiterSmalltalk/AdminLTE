testing
isCollapsible
  ^ self properties at: #'collapsible' ifAbsent: [ true ]