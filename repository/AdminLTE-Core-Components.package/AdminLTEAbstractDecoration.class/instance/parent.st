accessing-properties
parent
  ^ self properties at: #'parent' ifAbsent: [ nil ]