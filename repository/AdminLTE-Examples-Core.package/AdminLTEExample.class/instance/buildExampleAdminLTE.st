example-config
buildExampleAdminLTE
  | example |
  example := AdminLTE new.
  example
    addNavbarItem: self exampleNavbarMailMenu;
    addNavbarItem: self exampleNavbarNotificationsMenu;
    addNavbarItem: self exampleNavbarTasksMenu.
  ^ example