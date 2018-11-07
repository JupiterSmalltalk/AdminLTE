accessing
rememberMe: aBoolean
  "Temporary storage of password for login widget"

  self properties at: #'rememberMe' put: aBoolean.
  aBoolean
    ifTrue: [ 
      WACurrentRequestContext value response
        addCookie:
          (WACurrentRequestContext value newCookie
            path: '/';
            key: 'emailAddress';
            value: self userName greaseString;
            yourself) ]
    ifFalse: [ 
      "delete cookie"
      WACurrentRequestContext value response
        deleteCookie:
          (WACurrentRequestContext value newCookie
            path: '/';
            key: 'emailAddress';
            yourself) ]