running
tearDown
	SmalltalkCI printToStdout: 'Finished running suite: ', self suiteName.
	
	"Do not take this into account"
	"(self spec failOnZeroTests and: [ self totalTests == 0 ])
		ifTrue: [ SCIError signal: 'No examples were executed.

If this is intended, use `#failOnZeroTests : false` in your SmalltalkCISpec.' ]."
