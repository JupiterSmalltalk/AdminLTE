rendering
renderAdminContentBoxOn: canvas
  canvas tbsRow
    with: [ 
      self infoBoxExampleData
        do: [ :infoBoxExample | 
          canvas tbsColumn
            mediumSize: 3;
            smallSize: 6;
            extraSmallSize: 12;
            with: [ 
                  canvas
                    render:
                      (AdminLTEBoxWidget new
                        icon: (infoBoxExample at: #'icon');
                        label: (infoBoxExample at: #'label');
                        widgetColor: (infoBoxExample at: #'widgetColor');
                        yourself) ] ] ]