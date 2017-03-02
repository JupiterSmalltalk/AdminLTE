testing
isRemoved
  ^ self properties at: #'removed' ifAbsent: [ false ]