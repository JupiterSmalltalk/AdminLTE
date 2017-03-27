accessing
loginError
  "Temporary storage of loginError for login widget"

  ^ self properties at: #'loginError' ifAbsent: [ nil ]