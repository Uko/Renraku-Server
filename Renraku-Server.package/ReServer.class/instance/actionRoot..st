actions
actionRoot: request

	^ { #complaints ->
		 (ReSComplaint selectAll size + ReSFeedback selectAll size)
	  } asDictionary 