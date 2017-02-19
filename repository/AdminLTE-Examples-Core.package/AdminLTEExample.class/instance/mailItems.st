example-data
mailItems
  ^ OrderedCollection new
    add:
        (Dictionary new
            at: #'imageUrl' put: AdminLTEFileLibrary / #'imguser2160x160Jpg';
            at: #'callback'
              put: [ self announcer announce: (AdminLTEPanelSelected panel: AdminLTEMailboxPanel) ];
            at: #'heading' put: 'Seaside and AdminLTE';
            at: #'text' put: 'Making admin interfaces easy.';
            at: #'labelColor' put: Color green;
            at: #'labelText' put: '5 mins';
            yourself);
    add:
        (Dictionary new
            at: #'imageUrl'
              put: [ AdminLTEFileLibrary / #'imguser3128x128Jpg' ];
            at: #'heading' put: [ 'Smalltalk is amazing' ];
            at: #'text'
              put: [ :html | 
                  html
                    text: 'There ';
                    strong: ' is ';
                    text: 'no other language like it.' ];
            at: #'labelText' put: [ '1 day' ];
            yourself);
    add:
        (Dictionary new
            at: #'imageUrl' put: AdminLTEFileLibrary / #'imguser6128x128Jpg';
            at: #'heading' put: 'Is the answer 42?';
            at: #'text' put: 'Did Deep Thought get it wrong?';
            at: #'labelText' put: '10 days';
            yourself);
    add:
        (Dictionary new
            at: #'imageUrl' put: AdminLTEFileLibrary / #'imguser5128x128Jpg';
            at: #'heading' put: 'MyNation.Earth';
            at: #'text' put: 'Join a nation built for you!';
            at: #'labelText' put: '5 days';
            yourself);
    add:
        (Dictionary new
            at: #'imageUrl' put: AdminLTEFileLibrary / #'imguser4128x128Jpg';
            at: #'heading' put: 'Jupiter Smalltalk';
            at: #'text' put: 'Check out new projects here.';
            yourself);
    yourself