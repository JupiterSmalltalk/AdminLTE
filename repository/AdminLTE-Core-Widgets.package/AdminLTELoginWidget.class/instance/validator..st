accessing
validator: aValidator
  "Set the object sued to validate users. It can be any object that responds to #validateUser:password:"

  self properties at: #'validator' put: aValidator