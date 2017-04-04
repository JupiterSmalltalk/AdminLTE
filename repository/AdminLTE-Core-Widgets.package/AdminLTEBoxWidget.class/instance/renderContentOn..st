rendering
renderContentOn: canvas
  self isRemoved
    ifFalse: [ 
      canvas div
        class: 'box';
        class: self tbsColorClass;
        class: 'collapsed-box' if: self isCollapsed;
        with: [ 
              self renderBoxHeaderOn: canvas.
              self renderBoxBodyOn: canvas.
              self renderBoxOverlayOn: canvas ] ]