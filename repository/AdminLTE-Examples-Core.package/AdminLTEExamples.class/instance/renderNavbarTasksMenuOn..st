rendering-header
renderNavbarTasksMenuOn: canvas
  self
    renderNavbarMenuClass: 'tasks-menu'
    dropdownBlock: [ :html | 
      (html tag: 'i')
        fontAwesome;
        fontAwesomeFlagIcon.
      html tbsLabel
        beDanger;
        with: 7 ]
    headerBlock: [ :html | html text: 'You have 7 tasks' ]
    contentBlock: [ :html | 7 timesRepeat: [ html listItem with: [ self renderNavBarTaskItemOn: html ] ] ]
    footerBlock: [ :html | html anchor with: 'See all tasks' ]
    on: canvas