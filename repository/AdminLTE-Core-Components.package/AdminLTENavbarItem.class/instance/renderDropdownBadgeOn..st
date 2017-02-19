rendering
renderDropdownBadgeOn: canvas
  self
    renderTemplate: [ :html :contentBlock | 
      | labelTag |
      labelTag := html tbsLabel.
      self backgroundColor: self badgeColor tag: labelTag.
      labelTag with: [ contentBlock value: html ] ]
    ifValueFromObjectOrBlock: badge
    on: canvas