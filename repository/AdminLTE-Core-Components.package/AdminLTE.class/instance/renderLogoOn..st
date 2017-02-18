rendering-header-logo
renderLogoOn: canvas
  canvas anchor
    class: 'logo';
    with: [ 
          canvas span
            class: 'logo-mini';
            with: [ self renderLogoMiniOn: canvas ].
          canvas span
            class: 'logo-lg';
            with: [ self renderLogoLargeOn: canvas ] ]