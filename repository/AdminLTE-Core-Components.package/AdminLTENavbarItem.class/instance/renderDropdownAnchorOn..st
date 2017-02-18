rendering
renderDropdownAnchorOn: canvas
  | labelTag |
  canvas tbsDropdownAnchor
    with: [ 
      self
        renderDropdownIconOn: canvas;
        renderDropdownLabelOn: canvas;
        renderDropdownBadgeOn: canvas ]