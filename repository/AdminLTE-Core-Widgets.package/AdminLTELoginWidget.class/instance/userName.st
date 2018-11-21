accessing
userName
  "Temporary storage of username for login widget."

  self emailAddressCookie
    ifNotNil: [ :cookie | 
      self properties at: #'rememberMe' put: true.
      self userName: cookie value ].
  ^ self properties at: #'userName' ifAbsent: [ nil ]