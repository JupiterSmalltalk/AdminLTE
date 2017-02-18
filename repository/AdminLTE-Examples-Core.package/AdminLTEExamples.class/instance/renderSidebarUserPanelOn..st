rendering-sidebar
renderSidebarUserPanelOn: canvas
  canvas div
    tbsPullLeft;
    class: 'image';
    with: [ 
          canvas tbsImage
            beCircle;
            url: AdminLTEFileLibrary / #'imguser2160x160Jpg' ].
  canvas div
    tbsPullLeft;
    class: 'info';
    with: [ 
          canvas paragraph: 'Jupiter Jones'.
          canvas anchor
            with: [ 
              (canvas tag: 'i')
                fontAwesome;
                fontAwesomeCircleIcon;
                class: 'text-success'.
              canvas text: ' Online' ] ]