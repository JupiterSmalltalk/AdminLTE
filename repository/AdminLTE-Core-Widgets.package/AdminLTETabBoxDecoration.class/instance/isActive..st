testing
isActive: tab
  ^ tab at: #'active' ifAbsentPut: [ false ]