running
setUp
	SmalltalkCI printToStdout: 'Running suite "', self suiteName ,'" with ', self totalTests asString, ' tests.'.

	"Initialize the test resources."
	suite resources do: [ :each |
		each isAvailable
			ifFalse: [ TestResult signalErrorWith: 'Resource ' , each name , ' could not be initialized' ] ]
