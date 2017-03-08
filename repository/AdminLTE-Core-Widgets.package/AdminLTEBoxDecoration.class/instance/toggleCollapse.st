actions
toggleCollapse
  ^ self properties at: #'collapsed' put: self isCollapsed not