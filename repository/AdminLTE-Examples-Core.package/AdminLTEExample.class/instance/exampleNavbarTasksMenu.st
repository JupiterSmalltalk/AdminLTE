example-navbar
exampleNavbarTasksMenu
  | menu |
  menu := AdminLTENavbarItem new
    icon: #'flag';
    badge: [ :canvas | canvas text: self numberOfTasks ];
    badgeColor: 'rgba(100,200,255,0.65)';
    cssClass: 'tasks-menu';
    yourself.
  ^ menu