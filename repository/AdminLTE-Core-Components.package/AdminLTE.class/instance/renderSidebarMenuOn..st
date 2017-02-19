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
                callback: [ announcer announce: (AdminLTEPanelSelected panel: adminPanel) ];
                with: [ 
                      self renderIcon: adminPanel icon color: adminPanel iconColor on: canvas.
                      self
                        renderTemplate: [ :html :contentBlock | canvas span with: [ contentBlock value: html ] ]
                        ifValueFromObjectOrBlock: adminPanel label
                        on: canvas.
                      canvas span
                        class: 'pull-right-container';
                        with: [ 
                              adminPanel adminPanels
                                ifNotEmpty: [ 
                                  (canvas tag: 'i')
                                    fontAwesome;
                                    fontAwesomeAngleLeftIcon;
                                    class: 'pull-right' ] ] ] ] ]