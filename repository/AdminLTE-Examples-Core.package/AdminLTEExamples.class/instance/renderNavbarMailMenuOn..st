rendering-header
renderNavbarMailMenuOn: canvas
  self
    renderNavbarMenuClass: 'messages-menu'
    dropdownBlock: [ :html | 
      (html tag: 'i')
        fontAwesome;
        fontAwesomeEnvelopeIcon.
      html tbsLabel
        beInfo;
        with: 10 ]
    headerBlock: [ :html | html text: 'You have 10 messages' ]
    contentBlock: [ :html | 5 timesRepeat: [ html listItem with: [ self renderNavBarMailItemOn: html ] ] ]
    footerBlock: [ :html | html anchor with: 'See all messages' ]
    on: canvas