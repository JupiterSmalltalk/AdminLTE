example-navbar
exampleNavbarNotificationsMenu
  | menu |
  menu := AdminLTENavbarItem new
    icon: #'bell';
    badge: [ self numberOfNotifications ];
    badgeColor: Color paleTan;
    cssClass: 'notifications-menu';
    menuHeader: [ 'You have ' , self mailItems size asString , ' notifications' ];
    menuFooter: [ :canvas | 
          canvas anchor
            callback: [  ];
            with: [ canvas text: 'View All Notifications' ] ];
    menuItems: [ self notificationItems ];
    menuContent: #'notification';
    yourself.
  ^ menu