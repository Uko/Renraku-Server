initialization
initialize
	teapot ifNotNil: [ teapot stop ].

	super initialize.
	
	teapot := (Teapot configure: {#port -> 4000})
   		POST: '/complaints' -> [ :req | self actionComplaintAdd: req ];
		any: '*' -> [ :req | ZnResponse badRequest: req ];
		exception: Exception -> [ :ex :req |
			ZnResponse serverError: 'Something bad happened, we are looking into it' ]