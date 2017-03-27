rendering
renderMenuOn: canvas
  | headerBlock contentBlock footerBlock |
  canvas unorderedList
    class: 'dropdown-menu';
    with: [ 
          canvas listItem
            class: 'user-header';
            with: [ 
                  self
                    renderTemplate: [ :html :contentBlock | contentBlock value: html ]
                    ifValueFromObjectOrBlock: menuHeader
                    on: canvas ].
          canvas listItem
            with: [ 
              canvas unorderedList
                class: 'user-body';
                with: [ self renderMenuContentOn: canvas ] ].
          canvas listItem
            class: 'user-footer';
            with: [ 
                  self
                    renderTemplate: [ :html :contentBlock | contentBlock value: html ]
                    ifValueFromObjectOrBlock: menuFooter
                    on: canvas ] ]