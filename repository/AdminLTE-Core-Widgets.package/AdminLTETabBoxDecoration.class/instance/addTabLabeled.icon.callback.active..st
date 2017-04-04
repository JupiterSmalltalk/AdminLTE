accessing
addTabLabeled: tabLabel icon: tabIcon callback: tabCallback active: isActive
  | tabDict |
  tabs
    add:
      (tabDict := Dictionary new
        at: #'label' put: tabLabel;
        at: #'icon' put: tabIcon;
        at: #'callback' put: tabCallback;
        at: #'active' put: isActive;
        yourself)