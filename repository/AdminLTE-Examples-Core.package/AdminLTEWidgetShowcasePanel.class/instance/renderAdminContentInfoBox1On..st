rendering
renderAdminContentInfoBox1On: canvas
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
                      (AdminLTEInfoBoxWidget new
                        icon: (infoBoxExample at: #'icon');
                        label: (infoBoxExample at: #'label');
                        number: (infoBoxExample at: #'number');
                        widgetColor: (infoBoxExample at: #'widgetColor');
                        yourself) ] ] ]