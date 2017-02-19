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
    add:
        (Dictionary new
            at: #'icon' put: #'shoppingCart';
            at: #'iconColor' put: Color red;
            at: #'text' put: '25 sales made.';
            at: #'callback' put: [  ];
            yourself);
    add:
        (Dictionary new
            at: #'icon' put: #'user';
            at: #'iconColor' put: Color blue;
            at: #'text' put: 'You changed your user name.';
            at: #'callback' put: [  ];
            yourself);
    add:
        (Dictionary new
            at: #'icon' put: #'cog';
            at: #'iconColor' put: Color orange;
            at: #'text' put: 'Setting updated.';
            at: #'callback' put: [  ];
            yourself);
    yourself