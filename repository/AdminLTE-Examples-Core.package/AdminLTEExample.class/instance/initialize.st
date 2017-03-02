example-config
initialize
  super initialize.
  self
    addPanel: AdminLTEDashboardPanel new;
    addPanel: AdminLTEMailboxPanel new;
    addPanel:
        (AdminLTEWidgetShowcasePanel new
            addPanel: AdminLTEWSocialWidgetShowcasePanel new;
            yourself);
    addNavbarItem: self exampleNavbarMailMenu;
    addNavbarItem: self exampleNavbarNotificationsMenu;
    addNavbarItem: self exampleNavbarTasksMenu