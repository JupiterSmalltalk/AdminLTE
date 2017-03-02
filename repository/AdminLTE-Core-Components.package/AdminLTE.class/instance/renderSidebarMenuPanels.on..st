rendering-sidebar
renderSidebarMenuPanels: menuPanels on: canvas
  menuPanels
    do: [ :panel | 
      canvas listItem
        class:
            (panel isRootOfType
                ifTrue: [ 'treeview' ]);
        class: 'active' if: panel == selectedPanel;
        with: [ 
              canvas anchor
                onClick:
                    (canvas jQuery ajax
                        script: [ :s | 
                          announcer announce: (AdminLTEPanelSelected panel: panel).
                          s
                            <<
                              ((s jQuery this parents: 'ul') first find: 'li.active')
                            removeClass: 'active'.
                          s << s jQuery this parent addClass: 'active'.
                          s << (s jQuery: '.content-wrapper')
                            html: [ :r | self renderAdminContentOn: r ] ]);
                with: [ 
                      self renderIcon: panel icon color: panel iconColor on: canvas.
                      self
                        renderTemplate: [ :html :contentBlock | canvas span with: [ contentBlock value: html ] ]
                        ifValueFromObjectOrBlock: panel label
                        on: canvas.
                      canvas span
                        class: 'pull-right-container';
                        with: [ 
                              panel panels
                                ifNotEmpty: [ 
                                  (canvas tag: 'i')
                                    fontAwesome;
                                    fontAwesomeAngleLeftIcon;
                                    class: 'pull-right' ] ] ].	"Render submenus"
              panel panels
                ifNotEmpty: [ 
                  canvas unorderedList
                    class: 'treeview-menu';
                    with: [ self renderSidebarMenuPanels: panel panels on: canvas ] ] ] ]