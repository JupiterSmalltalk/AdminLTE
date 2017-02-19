panels
addAdminPanel: anAdminLTEContentPanel
  adminPanels ifEmpty: [ selectedPanel := anAdminLTEContentPanel ].
  adminPanels
    add:
      (anAdminLTEContentPanel
        parent: self;
        yourself)