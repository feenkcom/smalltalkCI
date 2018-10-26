running
runAll
	suite examples do: [ :each | self runCase: each ].
