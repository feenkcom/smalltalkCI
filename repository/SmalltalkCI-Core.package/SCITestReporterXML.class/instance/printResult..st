printing
printResult: aResult
	self
		tab; print: '<testcase classname="';
		print: (self encode: (aResult testClass category asString copyReplaceAll: '-' with: '.'));
		print: '.', (self encode: aResult testClass name), '" ';
		print: 'name="', (self encode: aResult selector), '" ';
		print: 'time="', (aResult time / 1000.0) asString, '">'.
	aResult passed ifFalse: [
		self newLine.
		super printResult: aResult.
		self tab ].
	self print: '</testcase>'; newLine