example-data
notificationItems
  ^ OrderedCollection new
    add:
        (Dictionary new
            at: #'icon' put: #'group';
            at: #'text' put: '5 new members joined today.';
            at: #'callback' put: [  ];
            yourself);
    add:
        (Dictionary new
            at: #'icon' put: #'warning';
            at: #'iconColor' put: Color green;
            at: #'text'
              put: [ 'A very long description that will not fit on the panel.' ];
            yourself);
    yourself