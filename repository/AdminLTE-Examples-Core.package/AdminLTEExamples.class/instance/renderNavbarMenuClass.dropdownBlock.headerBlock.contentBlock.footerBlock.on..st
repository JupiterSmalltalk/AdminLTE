rendering-header
renderNavbarMenuClass: menuClass dropdownBlock: dropdownBlock headerBlock: headerBlock contentBlock: contentBlock footerBlock: footerBlock on: canvas
  canvas listItem
    tbsDropdown;
    class: menuClass;
    with: [ 
          canvas tbsDropdownAnchor with: [ dropdownBlock value: canvas ].
          canvas unorderedList
            class: 'dropdown-menu';
            with: [ 
                  canvas listItem
                    class: 'header';
                    with: [ headerBlock value: canvas ].
                  canvas listItem
                    with: [ 
                      canvas unorderedList
                        class: 'menu';
                        script:
                            (canvas jQuery this slimScroll
                                height: '200px';
                                yourself);
                        with: [ contentBlock value: canvas ] ].
                  canvas listItem
                    class: 'footer';
                    with: [ footerBlock value: canvas ] ] ]