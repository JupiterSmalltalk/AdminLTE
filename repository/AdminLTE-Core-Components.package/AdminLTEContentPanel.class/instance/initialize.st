initialisation
initialize
  super initialize.
  adminPanels := OrderedCollection new.
  (announcer := Announcer new)
    on: AdminLTEPanelSelected
    do: [ :announcement | selectedPanel := announcement panel ]
    for: self