rendering
renderInfoBoxActionsOn: canvas
  "Actions to appear bottom right of the infobox"

  canvas span
    class: 'info-box-actions';
    style: 'position: relative; right: 1px; bottom: 1px; text-align: right;';
    with: [ 
          self actionsRenderingBlock
            ifNotNil: [ :actionsRenderingBlock | actionsRenderingBlock value: canvas ] ]