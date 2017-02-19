example-navbar
exampleNavbarTasksMenu
  | menu |
  menu := AdminLTENavbarItem new
    icon: #'flag';
    badge: [ :canvas | canvas text: self taskItems size ];
    badgeColor: 'rgba(100,200,255,0.65)';
    cssClass: 'tasks-menu';
    menuHeader: [ 'You have ' , self taskItems size asString , ' tasks' ];
    menuFooter: [ :canvas | 
          canvas anchor
            callback: [  ];
            with: [ canvas text: 'View All Tasks' ] ];
    menuItems: [ self taskItems ];
    menuContent: #'task';
    yourself.
  ^ menu