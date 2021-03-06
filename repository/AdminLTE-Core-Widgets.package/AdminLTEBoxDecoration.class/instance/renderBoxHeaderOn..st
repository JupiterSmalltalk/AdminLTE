rendering
renderBoxHeaderOn: canvas
  canvas div
    class: 'box-header with-border';
    with: [ 
          canvas heading
            level3;
            class: 'box-title';
            with: [ 
                  self icon
                    ifNotNil: [ 
                      self renderIcon: self icon color: self iconColor on: canvas.
                      canvas space ].
                  self renderIfValueFromObjectOrBlock: self label on: canvas ].
          canvas div
            class: 'box-tools';
            tbsPullRight;
            with: [ 
                  self isCollapsible
                    ifTrue: [ 
                      canvas tbsButton
                        onClick:
                            (canvas jQuery ajax callback: [ self toggleCollapse ]);
                        class: 'btn-box-tool';
                        attributeAt: 'data-widget' put: 'collapse';
                        with: [ 
                              self
                                renderIcon:
                                  (self isCollapsed
                                    ifTrue: [ #'plus' ]
                                    ifFalse: [ #'minus' ])
                                color: nil
                                on: canvas ] ].
                  self isRemovable
                    ifTrue: [ 
                      canvas tbsButton
                        onClick: (canvas jQuery ajax callback: [ self remove ]);
                        class: 'btn-box-tool';
                        attributeAt: 'data-widget' put: 'remove';
                        with: [ self renderIcon: #'times' color: nil on: canvas ] ] ] ]