accessing-properties
widgetColor
  "Answer a String cssClass Symbol selector or block whose value answers string or selector"

  ^ self properties at: #'widgetColor' ifAbsent: [ 'aqua' ]