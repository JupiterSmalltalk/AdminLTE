panels
addPanel: anAdminLTEContentPanel
  panels ifEmpty: [ selectedPanel := anAdminLTEContentPanel ].
  panels
    add:
      (anAdminLTEContentPanel
        parent: self;
        yourself)