rendering-sidebar
renderSidebarMenuLongFormOn: canvas
  canvas listItem
    class: 'header';
    with: 'MAIN NAVIGATION'.
  canvas listItem
    class: 'treeView active';
    with: [ 
          canvas anchor
            with: [ 
              (canvas tag: 'i')
                fontAwesome;
                fontAwesomeTachometerIcon.
              canvas span: 'Dashboard'.
              canvas span
                class: 'pull-right-container';
                with: [ 
                      (canvas tag: 'i')
                        fontAwesome;
                        fontAwesomeAngleLeftIcon;
                        class: 'pull-right' ] ].
          canvas unorderedList
            class: 'treeview-menu';
            with: [ 
                  canvas listItem
                    with: [ 
                      canvas anchor
                        with: [ 
                          (canvas tag: 'i')
                            fontAwesome;
                            fontAwesomeCircleOutlinedIcon.
                          canvas text: 'Version 1' ] ].
                  canvas listItem
                    with: [ 
                      canvas anchor
                        with: [ 
                          (canvas tag: 'i')
                            fontAwesome;
                            fontAwesomeCircleOutlinedIcon.
                          canvas text: 'Version 2' ] ] ] ]