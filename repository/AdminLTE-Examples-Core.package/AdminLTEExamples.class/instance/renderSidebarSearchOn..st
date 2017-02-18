rendering-sidebar
renderSidebarSearchOn: canvas
  canvas tbsInputGroup
    with: [ 
      canvas textInput tbsFormControl placeholder: 'Search'.
      canvas tbsInputGroupButton
        with: [ 
          canvas tbsButton
            with: [ 
              (canvas tag: 'i')
                fontAwesome;
                fontAwesomeSearchIcon ] ] ]