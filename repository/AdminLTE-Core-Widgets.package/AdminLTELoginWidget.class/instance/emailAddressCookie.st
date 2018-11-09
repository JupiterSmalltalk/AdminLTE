accessing
emailAddressCookie
  "Temporary storage of username for login widget"

  ^ WACurrentRequestContext value request cookies
    detect: [ :cookie | cookie key = 'emailAddress' ]
    ifNone: [ nil ]