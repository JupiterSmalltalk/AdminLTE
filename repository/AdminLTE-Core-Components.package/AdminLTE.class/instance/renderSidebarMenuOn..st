rendering-sidebar
renderSidebarMenuOn: canvas
  canvas listItem
    class: 'header';
    with: [ canvas text: 'MAIN NAVIGATION' ].
  adminPanels
    do: [ :adminPanel | 
      canvas listItem
        class: 'treeView';
        with: [ 
              canvas anchor
                with: [ 
                  self renderIcon: adminPanel icon color: adminPanel iconColor on: canvas.
                  self
                    renderTemplate: [ :html :contentBlock | canvas span with: [ contentBlock value: html ] ]
                    ifValueFromObjectOrBlock: adminPanel lobel
                    on: canvas.
                  canvas span
                    class: 'pull-right-container';
                    with: [ 
                          (canvas tag: 'i')
                            fontAwesome;
                            fontAwesomeAngleLeftIcon;
                            class: 'pull-right' ] ] ] ]