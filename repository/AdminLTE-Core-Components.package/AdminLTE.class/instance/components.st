accessing
components
  "WAComponent subclass instances"

  ^ self properties at: #'components' ifAbsentPut: [ Dictionary new ]