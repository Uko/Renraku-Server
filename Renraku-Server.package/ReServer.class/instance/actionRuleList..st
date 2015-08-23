actions
actionRuleList: request

	^ { #goodRules ->
		(((((ReSFeedback selectMany: { #positive -> true } asDictionary)
			groupedBy: #rule)
			collect: #size) associations
				sorted: [ :a :b |
					a value > b value ])
				collect: [ :ass |
					{ #rule -> ass key . #number -> ass value } asDictionary ]) .
				
		 #badRules ->
		(((((ReSComplaint selectAll,
			 (ReSFeedback selectMany: { #positive -> false } asDictionary))
			groupedBy: #rule)
			collect: #size) associations
				sorted: [ :a :b |
					a value > b value ])
				collect: [ :ass |
					{ #rule -> ass key . #number -> ass value } asDictionary ])
		} asDictionary 