accessing
positiveString: aString

	aString asString = 'true'  ifTrue: [ ^ self positive: true  ].
	aString asString = 'false' ifTrue: [ ^ self positive: false ].
	
	Error signal: 'positive flag not boolean'