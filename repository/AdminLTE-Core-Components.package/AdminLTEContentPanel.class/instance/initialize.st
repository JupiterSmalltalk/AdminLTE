initialisation
initialize
  super initialize.
  panels := OrderedCollection new.
  (announcer := Announcer new)
    subscribe: AdminLTEPanelSelected
    send: #'panelSelectedAnnouncement:'
    to: self