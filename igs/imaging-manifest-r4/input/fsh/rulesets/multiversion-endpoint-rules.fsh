RuleSet: setEndpointConnectionType( slice, mimetype )
* connectionType 
//R5  * insert SliceElement( #value, coding )
//R5* connectionType contains {slice} 1..1
//R5* connectionType[{slice}] 
      = {mimetype} 
