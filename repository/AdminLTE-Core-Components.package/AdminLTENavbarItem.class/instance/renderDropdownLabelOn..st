rendering
renderDropdownLabelOn: canvas
  self
    renderTemplate: [ :html :valueBlock | 
      | spanTag |
      spanTag := html span.
      self color: self labelColor tag: spanTag.
      spanTag
        with: [ 
          html space.
          valueBlock value: html ] ]
    ifValueFromObjectOrBlock: label
    on: canvas