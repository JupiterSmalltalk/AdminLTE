rendering-header
renderNavBarMailItemOn: canvas
  canvas anchor
    with: [ 
      canvas div
        tbsPullLeft;
        with: [ 
              canvas tbsImage
                beCircle;
                url: AdminLTEFileLibrary / #'imguser2160x160Jpg' ].
      canvas heading
        level4;
        with: [ 
              canvas text: 'Support Team'.
              canvas small
                with: [ 
                  (canvas tag: 'i')
                    fontAwesome;
                    fontAwesomeClockOutlinedIcon.
                  canvas text: ' 5 mins' ] ].
      canvas paragraph: 'This is the AdminLTE Seaside integration' ]