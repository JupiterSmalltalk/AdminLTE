rendering-header-navbar
renderNavbarOn: canvas
  canvas tbsNavbar
    beStaticTop;
    with: [ 
          self renderSidebarToggleOn: canvas.
          canvas div
            class: 'navbar-custom-menu';
            with: [ 
                  canvas unorderedList
                    class: 'nav navbar-nav';
                    with: [ 
                          self navbarItems
                            do: [ :navbarItem | self renderNavbarItem: navbarItem on: canvas ].
                          self renderControlSidebarToggleOn: canvas ] ] ]