RuleSet: setEndpointConnectionType( slice, mimetype )
* connectionType 
  * insert SliceElement( #value, coding )
* connectionType contains {slice} 1..1
* connectionType[{slice}] 
      = {mimetype} 
