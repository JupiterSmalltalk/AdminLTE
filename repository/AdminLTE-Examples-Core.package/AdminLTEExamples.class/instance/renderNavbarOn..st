rendering-header
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
                          self
                            renderNavbarMailMenuOn: canvas;
                            renderNavbarNotificationsMenuOn: canvas;
                            renderNavbarTasksMenuOn: canvas;
                            renderNavbarUserMenuOn: canvas;
                            renderControlSidebarToggleOn: canvas ] ] ]