executing
basicTest
	| testRunner exampleRunner |
	self ensureSpecIsValid.
	self class
		stage: 'Testing project...'
		id: 'test_project'
		block: [
			self prepareForTesting.
			self executionClass
				run: [ 
					testRunner := self runTests.
					exampleRunner := self runExamples ]
				spec: self spec
				in: self projectDirectory.
			self finishUpAfterTesting ].
	self reportResults: exampleRunner.
	self reportResults: testRunner.
	(exampleRunner isSuccessful not or: [ testRunner isSuccessful not ])
		ifTrue: [ SCIError signal: '[test failure]' ]