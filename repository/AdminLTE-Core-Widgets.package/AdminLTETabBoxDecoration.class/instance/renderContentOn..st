rendering
renderContentOn: canvas
  canvas div
    class: 'nav-tabs-custom';
    with: [ 
          canvas tbsNav
            beTabs;
            tbsPullRight;
            with: [ 
                  tabs do: [ :tab | self renderTab: tab on: canvas ].
                  self renderLabelOn: canvas ].
          canvas div
            class: 'tab-content';
            with: [ self renderNextOn: canvas ] ]