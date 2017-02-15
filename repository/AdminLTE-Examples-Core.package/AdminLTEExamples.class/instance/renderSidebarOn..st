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
            with: [  ].
          canvas unorderedList
            class: 'sidebar-menu';
            with: [  ] ]