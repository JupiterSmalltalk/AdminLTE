rendering-header
renderNavbarNotificationsMenuOn: canvas
  self
    renderNavbarMenuClass: 'notifications-menu'
    dropdownBlock: [ :html | 
      (html tag: 'i')
        fontAwesome;
        fontAwesomeBellOutlinedIcon.
      html tbsLabel
        beWarning;
        with: 5 ]
    headerBlock: [ :html | html text: 'You have 5 notifications' ]
    contentBlock: [ :html | 
      5
        timesRepeat: [ html listItem with: [ self renderNavBarNotificationItemOn: html ] ] ]
    footerBlock: [ :html | html anchor with: 'View All' ]
    on: canvas