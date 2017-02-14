rendering
renderContentOn: canvas
  canvas div adminLTE
    with: [ 
      canvas header adminLTEHeader with: [ self renderHeaderOn: canvas ].
      canvas aside adminLTESidebar with: [ self renderSidebarOn: canvas ].
      canvas div adminLTEContent with: [ self renderSelectedPanelOn: canvas ] ]