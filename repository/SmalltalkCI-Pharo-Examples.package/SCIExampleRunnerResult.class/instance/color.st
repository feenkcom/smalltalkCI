accessing
color
	self errored ifTrue: [ ^ SmalltalkCI ansiRed ].
	self failed ifTrue: [ ^ SmalltalkCI ansiYellow ].
	^ SmalltalkCI ansiGreen