accessing
ansiTitle
	| prefix |
	prefix := self passed
		ifTrue: [ SCITestRunnerResult checkMark, SmalltalkCI ansiReset ]
		ifFalse: [ SCITestRunnerResult ballot ].
	^ self color, ' ', prefix, ' ', self title, SmalltalkCI ansiReset