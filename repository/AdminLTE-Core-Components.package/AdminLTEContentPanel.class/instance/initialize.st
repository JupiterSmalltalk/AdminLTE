initialisation
initialize
  super initialize.
  panels := OrderedCollection new.
  (announcer := Announcer new)
    on: AdminLTEPanelSelected
    send: #'panelSelectedAnnouncement:'
    to: self