actions
setActive: tab
  tabs do: [ :tab | tab at: #'active' put: false ].
  tab at: #'active' put: true