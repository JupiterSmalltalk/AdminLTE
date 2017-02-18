rendering-header-navbar
renderControlSidebarToggleOn: canvas
  canvas listItem
    with: [ 
      canvas anchor
        attributeAt: 'data-toggle' put: 'control-sidebar';
        with: [ 
              (canvas tag: 'i')
                fontAwesome;
                fontAwesomeGearsIcon ] ]