voyage-model-core-extensions
fromRequest: aRequest

	^ self new
		uuidString: (aRequest at: #uuid);
		pharoVersionString: (aRequest at: #pharoVersion);
		author: (aRequest at: #author);
		rule: (aRequest at: #rule);
		target: (aRequest at: #target);
		timeString: (aRequest at: #time);
		yourself