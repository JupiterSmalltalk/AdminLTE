load from dist
loadFromDist
  "Load the dist directory into the AdminLTEFileLibrary"

  (AdminLTEFileLibrary allSelectors
    select: [ :selector | 
      #(#'uploaded' #'uploaded metadata')
        includes: (AdminLTEFileLibrary categoryOfSelector: selector) ])
    do: [ :selector | AdminLTEFileLibrary removeSelector: selector ].
  AdminLTEFileLibrary removeEmptyCategories.
  AdminLTEFileLibrary
    recursivelyAddAllFilesIn: '/opt/git/JupiterSmalltalk/AdminLTE/dist'