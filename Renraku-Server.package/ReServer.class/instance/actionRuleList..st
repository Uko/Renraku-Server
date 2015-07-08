actions
actionRuleList: request

	^ { #rules ->
		(((((ReSComplaint selectAll)
			groupedBy: #rule)
			collect: #size) associations
				sorted: [ :a :b |
					a value > b value ])
				collect: [ :ass |
					{ #rule -> ass key . #number -> ass value } asDictionary ])
		} asDictionary 