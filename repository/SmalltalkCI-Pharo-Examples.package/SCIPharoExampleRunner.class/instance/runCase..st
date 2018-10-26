running
runCase: anExample
	| result |
	SmalltalkCI printDebug: anExample gtDisplayString.
	result := SCIExampleRunnerResult new example: anExample.
	result time: (SmalltalkCI timeToRun: [ result run ]).
	self printProgress: result.
	(results at: anExample methodClass ifAbsentPut: [ OrderedCollection new ])
		add: result
		
	