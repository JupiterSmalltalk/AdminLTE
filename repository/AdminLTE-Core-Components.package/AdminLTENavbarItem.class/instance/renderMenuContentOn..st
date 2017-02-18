rendering
renderMenuContentOn: canvas
  "If there are no menuItems, render the content directly. If menuContent is a symbol then consider it a selector for a template in the form #renderMenu<templateName>Item:on:"

  | templateSelector items |
  menuItems isNil
    ifTrue: [ self renderIfValueFromObjectOrBlock: menuContent on: canvas ]
    ifFalse: [ 
      (menuItems isBlock
        ifTrue: [ menuItems value ]
        ifFalse: [ menuItems ])
        do: [ :menuItem | 
          canvas listItem
            with: [ 
              menuContent isSymbol
                ifTrue: [ 
                  templateSelector := ('renderMenu' , menuContent asLegalSelector capitalized
                    , 'Item:on:') asSymbol.
                  self perform: templateSelector with: menuItem with: canvas ] ] ] ]