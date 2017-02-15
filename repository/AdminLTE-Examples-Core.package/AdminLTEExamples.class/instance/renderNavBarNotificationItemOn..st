rendering-header
renderNavBarNotificationItemOn: canvas
  canvas anchor
    with: [ 
      (canvas tag: 'i')
        fontAwesome;
        fontAwesomeWarningIcon.
      canvas text: ' This is the notification' ]