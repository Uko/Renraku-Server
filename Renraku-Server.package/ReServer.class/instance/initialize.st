initialization
initialize
	teapot ifNotNil: [ teapot stop ].

	super initialize.
	
	teapot := (Teapot configure: {#port -> 4000 . #debugMode -> true})
   		POST: '/complaints' -> [ :req |
			ZnResponse ok:
				(ZnByteArrayEntity bytes:
					(self actionComplaintAdd: req) voyageId value asByteArray) ]
		