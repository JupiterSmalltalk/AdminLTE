accessing-properties
progressValue
  ^ self properties at: #'progressValue' ifAbsent: [ nil ]