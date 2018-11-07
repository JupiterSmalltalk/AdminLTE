accessing
rememberMe
  "Temporary storage of rememberMe for login widget"

  ^ self properties at: #'rememberMe' ifAbsent: [ false ]