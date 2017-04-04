rendering
renderBoxBodyOn: canvas
  canvas div
    class: 'box-body';
    with: [ self renderNextOn: canvas ]