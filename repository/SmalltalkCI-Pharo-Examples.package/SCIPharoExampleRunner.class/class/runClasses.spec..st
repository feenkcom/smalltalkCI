running
runClasses: aCollectionOfClasses spec: aSCISpec
  | examples examplesGroup classes |
  examples := OrderedCollection new. "named: aSCISpec name".
  classes := (aCollectionOfClasses
    select: [ :each | each isAbstract not and: [ each isTrait not ] ])
      asSortedCollection: [ :a :b | a name <= b name ].
  classes
    do: [ :aClass | 
		examples addAll: ((aClass gtExamples 
			reject: #ignoreTest) 
			reject: #ignoreTestReport) ].
	examplesGroup := SCIExplicitExampleGroup new
		examples: examples;
		name: aSCISpec name.
  ^ self runSuite: examplesGroup spec: aSCISpec