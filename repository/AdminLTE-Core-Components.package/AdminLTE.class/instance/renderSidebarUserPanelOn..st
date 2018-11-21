rendering-sidebar
renderSidebarUserPanelOn: canvas
  canvas div
    tbsPullLeft;
    class: 'image';
    with: [ 
          canvas tbsImage
            beCircle;
            url: AdminLTEFileLibrary / #'imguser6128x128Jpg' ].
  canvas div
    tbsPullLeft;
    class: 'info';
    with: [ 
          canvas paragraph: self userName.
          canvas anchor
            with: [ 
              (canvas tag: 'i')
                fontAwesome;
                fontAwesomeCircleIcon;
                class: 'text-success'.
              canvas text: ' Online' ] ]