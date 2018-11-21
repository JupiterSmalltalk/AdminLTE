accessing
userName
  "Temporary storage of username for login widget"

  ^ self session user ifNotNil: [ :user | user displayName ]