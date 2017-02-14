rendering-header
renderLogoOn: canvas
  canvas anchor
    class: 'logo';
    with: [ 
          canvas span
            class: 'logo-mini';
            with: [ 
                  canvas
                    strong: 'A';
                    text: 'LT' ].
          canvas span
            class: 'logo-lg';
            with: [ 
                  canvas
                    strong: 'Admin';
                    text: 'LTE' ] ]