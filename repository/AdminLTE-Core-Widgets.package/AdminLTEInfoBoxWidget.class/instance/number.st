accessing-properties
number
  ^ self properties at: #'number' ifAbsent: [ nil ]