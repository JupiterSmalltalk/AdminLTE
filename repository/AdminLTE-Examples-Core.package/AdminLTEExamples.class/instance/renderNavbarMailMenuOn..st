rendering-header
renderNavbarMailMenuOn: canvas
  canvas div
    class: 'navbar-custom-menu';
    with: [ 
          canvas unorderedList
            class: 'nav navbar-nav';
            with: [ 
                  canvas listItem
                    tbsDropdown;
                    with: [ 
                          canvas tbsDropdownAnchor
                            with: [ 
                              (canvas tag: 'i')
                                fontAwesome;
                                fontAwesomeEnvelopeIcon.
                              canvas tbsLabel
                                beInfo;
                                with: 10 ].
                          canvas unorderedList
                            class: 'dropdown-menu';
                            with: [ 
                                  canvas listItem
                                    class: 'header';
                                    with: 'You have 10 messages'.
                                  canvas listItem
                                    with: [ 
                                      canvas unorderedList
                                        class: 'menu';
                                        with: [ canvas listItem with: [ self renderNavBarMailItemOn: canvas ] ] ].
                                  canvas listItem
                                    class: 'footer';
                                    with: [ canvas anchor with: 'See all messages' ] ] ] ] ]