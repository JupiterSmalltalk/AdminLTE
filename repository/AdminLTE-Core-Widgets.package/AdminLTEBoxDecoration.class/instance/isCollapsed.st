testing
isCollapsed
  ^ self isCollapsible
    and: [ self properties at: #'collapsed' ifAbsent: [ false ] ]