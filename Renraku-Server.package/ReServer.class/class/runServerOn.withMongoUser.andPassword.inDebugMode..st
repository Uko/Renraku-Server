as yet unclassified
runServerOn: aPortNumber withMongoUser: aUserName andPassword: aPassword inDebugMode: boolOption

	(VOMongoRepository 
		host: 'localhost' 
		database: 'renraku'
		username: aUserName
		password: aPassword) enableSingleton.
		
	self uniqueInstance
		initializePort: aPortNumber debugMode: boolOption;
		start