private
performChecksForType: aSymbol on: aString

	| method violations |
	
	method := self checkMethodFor: aSymbol.
	(self class canUnderstand: method) ifFalse: [^{}].
	
	violations := (self perform: method)
		select: [ :anAssociation | anAssociation key value: aString] 
		thenCollect: [ :anAssociation | anAssociation value].
	^violations 
		ifEmpty: [{}]
		ifNotEmpty: [ {NamingToolTip for: (violations joinSeparatedBy: Character cr) . TextColor red} ]
	
	