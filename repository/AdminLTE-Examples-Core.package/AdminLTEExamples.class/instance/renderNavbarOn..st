rendering-header
renderNavbarOn: canvas
  canvas tbsNavbar
    beStaticTop;
    with: [ 
          self
            renderSidebarToggleOn: canvas;
            renderNavbarMailMenuOn: canvas ]