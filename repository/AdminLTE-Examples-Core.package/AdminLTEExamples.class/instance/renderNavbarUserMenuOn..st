rendering-header
renderNavbarUserMenuOn: canvas
  canvas listItem
    tbsDropdown;
    class: 'user user-menu';
    with: [ 
          canvas tbsDropdownAnchor
            with: [ 
              canvas tbsImage
                beCircle;
                class: 'user-image';
                url: AdminLTEFileLibrary / #'imguser2160x160Jpg'.
              canvas span
                tbsHiddenForExtraSmallDevices;
                with: [ canvas text: 'Jupiter Jones' ] ].
          canvas unorderedList
            class: 'dropdown-menu';
            with: [ 
                  canvas listItem
                    class: 'user-header';
                    with: [ 
                          canvas tbsImage
                            beCircle;
                            url: AdminLTEFileLibrary / #'imguser2160x160Jpg'.
                          canvas paragraph
                            with: [ 
                              canvas
                                text: 'Jupiter Jones';
                                small: 'Member since 2012' ] ].
                  canvas listItem
                    class: 'user-body';
                    with: [ 
                          canvas tbsRow
                            with: [ 
                              canvas tbsColumn
                                extraSmallSize: 4;
                                class: 'text-center';
                                with: [ canvas anchor with: 'Followers' ].
                              canvas tbsColumn
                                extraSmallSize: 4;
                                class: 'text-center';
                                with: [ canvas anchor with: 'Sales' ].
                              canvas tbsColumn
                                extraSmallSize: 4;
                                class: 'text-center';
                                with: [ canvas anchor with: 'Friends' ] ] ].
                  canvas listItem
                    class: 'user-footer';
                    with: [ 
                          canvas div
                            tbsPullLeft;
                            with: [ canvas tbsButton with: 'Profile' ].
                          canvas div
                            tbsPullRight;
                            with: [ canvas tbsButton with: 'Sign-Out' ] ] ] ]