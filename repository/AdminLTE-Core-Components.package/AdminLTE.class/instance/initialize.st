initialisation
initialize
  super initialize.
  navbarItems := OrderedCollection new.
  self session user: AdminLTEExampleUser new