initialization
initializePort: aPortNumber debugMode: aDebugFlag
	teapot ifNotNil: [ teapot stop ].

	super initialize.
	
	teapot := (Teapot configure: {#port -> aPortNumber . #debugMode -> aDebugFlag})
		GET: '/' -> [:req |
			self actionRoot: req];
		output: (self mustacheFullTemplateFor:
			self mustacheRoot);
		GET:  '/rules' -> [:req |
			self actionRuleList: req];
		output: (self mustacheFullTemplateFor:
			self mustacheRuleList);
   		POST: '/complaints' -> [ :req |
			ZnResponse ok:
				(ZnByteArrayEntity bytes:
					(self actionComplaintAdd: req) voyageId value asByteArray) ];
		POST: '/feedback' -> [ :req |
			ZnResponse ok:
				(ZnByteArrayEntity bytes:
					(self actionFeedbackAdd: req) voyageId value asByteArray) ]