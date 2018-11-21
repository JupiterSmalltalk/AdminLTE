validation
validateUserName: userName password: password
  [ self validator validateUserName: userName password: password ]
    on: Error
    do: [ :error | self loginError: error messageText ]