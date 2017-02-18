rendering
renderMenuOn: canvas
  | headerBlock contentBlock footerBlock |
  canvas unorderedList
    class: 'dropdown-menu';
    with: [ 
          canvas listItem
            class: 'header';
            with: [ 
                  self
                    renderTemplate: [ :html :contentBlock | contentBlock value: html ]
                    ifValueFromObjectOrBlock: menuHeader
                    on: canvas ].
          canvas listItem
            with: [ 
              canvas unorderedList
                class: 'menu';
                script:
                    (canvas jQuery this slimScroll
                        height: '200px';
                        yourself);
                with: [ self renderMenuContentOn: canvas ] ].
          canvas listItem
            class: 'footer';
            with: [ 
                  self
                    renderTemplate: [ :html :contentBlock | contentBlock value: html ]
                    ifValueFromObjectOrBlock: menuFooter
                    on: canvas ] ]