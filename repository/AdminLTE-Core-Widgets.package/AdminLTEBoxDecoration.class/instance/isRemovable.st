testing
isRemovable
  ^ self properties at: #'removable' ifAbsent: [ false ]