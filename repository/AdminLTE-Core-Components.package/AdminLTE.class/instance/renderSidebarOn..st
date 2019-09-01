rendering-sidebar
renderSidebarOn: canvas
  canvas section
    class: 'sidebar';
    with: [ 
          canvas div
            class: 'user-panel';
            with: [ self renderSidebarUserPanelOn: canvas ].
          canvas form
            class: 'sidebar-form';
            with: [ self renderSidebarSearchOn: canvas ].
          canvas unorderedList
            class: 'sidebar-menu';
            attributeAt: 'data-widget' put: 'tree';
            with: [ 
                  canvas listItem
                    class: 'header';
                    with: [ canvas text: 'MAIN NAVIGATION' ].
                  self renderSidebarMenuPanels: self panels on: canvas ] ]