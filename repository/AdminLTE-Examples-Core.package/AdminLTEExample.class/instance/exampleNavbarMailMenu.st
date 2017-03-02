example-navbar
exampleNavbarMailMenu
  | menu |
  menu := AdminLTENavbarItem new
    icon: #'envelope';
    badge: [ self mailItems size ];
    badgeColor: #'beWarning';
    cssClass: 'messages-menu';
    menuHeader: [ 'You have ' , self mailItems size asString , ' messages' ];
    menuFooter: [ :canvas | 
          canvas anchor
            callback: [ 
                  announcer
                    announce:
                      (AdminLTEPanelSelected
                        panel:
                          (panels detect: [ :panel | panel class == AdminLTEMailboxPanel ])) ];
            with: [ canvas text: 'View All Messages' ] ];
    menuItems: [ self mailItems ];
    menuContent: #'mail';
    yourself.
  ^ menu