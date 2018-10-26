running
tearDown
	SmalltalkCI printToStdout: 'Finished running suite: ', self suiteName.
	
	(self spec failOnZeroTests and: [ self totalTests == 0 ])
		ifTrue: [ SCIError signal: 'No tests were executed.

If this is intended, use `#failOnZeroTests : false` in your SmalltalkCISpec.' ].
