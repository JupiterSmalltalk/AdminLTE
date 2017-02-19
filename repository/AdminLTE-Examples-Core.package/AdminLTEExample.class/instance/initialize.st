example-config
initialize
  super initialize.
  self
    addNavbarItem: self exampleNavbarMailMenu;
    addNavbarItem: self exampleNavbarNotificationsMenu;
    addNavbarItem: self exampleNavbarTasksMenu;
    addAdminPanel: AdminLTEDashboardPanel new;
    addAdminPanel: AdminLTEMailboxPanel new