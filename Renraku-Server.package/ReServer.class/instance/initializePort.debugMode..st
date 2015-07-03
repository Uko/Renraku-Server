initialization
initializePort: aPortNumber debugMode: aDebugFlag
	teapot ifNotNil: [ teapot stop ].

	super initialize.
	
	teapot := (Teapot configure: {#port -> aPortNumber . #debugMode -> aDebugFlag})
   		POST: '/complaints' -> [ :req |
			ZnResponse ok:
				(ZnByteArrayEntity bytes:
					(self actionComplaintAdd: req) voyageId value asByteArray) ]