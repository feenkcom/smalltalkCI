accessing
color
	self errored ifTrue: [ ^ SmalltalkCI ansiRed ].
	self failed ifTrue: [ ^ SmalltalkCI ansiYellow ].
	"self passedUnexpectedly ifTrue: [ ^ SmalltalkCI ansiYellow ]." "No supported by examples."
	^ SmalltalkCI ansiGreen