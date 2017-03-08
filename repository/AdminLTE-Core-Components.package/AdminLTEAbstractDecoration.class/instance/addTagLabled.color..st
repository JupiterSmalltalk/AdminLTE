accessing-tags
addTagLabled: objectOrBlock color: colorOrStringOrSelector
  tags
    add:
      (Dictionary new
        at: #'label' put: objectOrBlock;
        at: #'color' put: colorOrStringOrSelector;
        yourself)