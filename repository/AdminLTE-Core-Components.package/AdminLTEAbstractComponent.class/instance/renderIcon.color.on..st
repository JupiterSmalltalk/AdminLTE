rendering-convenience
renderIcon: iconNameOrBlock color: color on: canvas
  | iconSelector iconTag |
  iconNameOrBlock isBlock
    ifTrue: [ 
      iconNameOrBlock argumentCount == 0
        ifTrue: [ iconSelector := iconNameOrBlock value ]
        ifFalse: [ 
          iconNameOrBlock argumentCount == 1
            ifTrue: [ ^ iconNameOrBlock value: canvas ] ] ].
  iconTag := canvas tag: 'i'.
  iconSelector := 'fontAwesome'
    , (iconSelector ifNil: [ iconNameOrBlock ]) asLegalSelector capitalized
    , 'Icon'.
  self color: color tag: iconTag.
  iconTag
    fontAwesome;
    perform: iconSelector