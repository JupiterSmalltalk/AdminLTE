rendering
renderContentOn: canvas
  canvas div
    class: 'wrapper';
    with: [ 
          canvas header
            class: 'main-header';
            with: [ self renderHeaderOn: canvas ].
          canvas aside
            class: 'main-sidebar';
            with: [ self renderSidebarOn: canvas ].
          canvas div
            class: 'content-wrapper';
            with: [ self renderAdminContentOn: canvas ].
          canvas aside
            class: 'control-sidebar';
            with: [ self renderSidebarControlOn: canvas ].
          canvas div class: 'control-sidebar-bg' ]