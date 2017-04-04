rendering
renderBoxOverlayOn: canvas
  canvas div
    class: 'overlay';
    style: 'display: none;';
    with: [ 
          (canvas tag: 'i')
            fontAwesome;
            fontAwesomeRefreshIcon;
            fontAwesomeSpin ]