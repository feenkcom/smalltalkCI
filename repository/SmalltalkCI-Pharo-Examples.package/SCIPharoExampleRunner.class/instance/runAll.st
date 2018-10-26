running
runAll
	suite tests do: [ :each | 
		"For example there is no double dispatch (at the moment) to run them."
		self runCase: each ].