example-data
taskItems
  ^ OrderedCollection new
    add:
        (Dictionary new
            at: #'text' put: 'Design some buttons';
            at: #'progressColor' put: Color green;
            at: #'progressValue' put: 20;
            yourself);
    add:
        (Dictionary new
            at: #'text' put: 'Create a nice theme';
            at: #'progressColor' put: Color red;
            at: #'progressValue' put: 5;
            yourself);
    add:
        (Dictionary new
            at: #'text' put: 'Get stuff done';
            at: #'progressColor' put: Color orange;
            at: #'progressValue' put: 65;
            yourself);
    add:
        (Dictionary new
            at: #'text' put: 'Some things I need to do';
            at: #'progressValue' put: 35;
            yourself);
    add:
        (Dictionary new
            at: #'text' put: 'Make beautiful transitions';
            at: #'progressColor' put: Color green;
            at: #'progressValue' put: 8;
            yourself);
    add:
        (Dictionary new
            at: #'text' put: 'Learn to tap dance';
            at: #'progressValue' put: 90;
            yourself);
    yourself