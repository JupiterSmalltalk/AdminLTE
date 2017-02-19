rendering-sidebar-control
renderSidebarControlOn: canvas
  canvas aside
    class: 'control-sidebar control-sidebar-dark';
    with: [ 
          canvas tbsNav
            beTabs;
            with: [ 
                  canvas tbsNavItem
                    beActive;
                    with: [ canvas anchor: 'Home' ].
                  canvas tbsNavItem: [ canvas anchor: 'Profile' ].
                  canvas tbsNavItem
                    beDisabled;
                    with: [ canvas anchor: 'Message' ] ] ]