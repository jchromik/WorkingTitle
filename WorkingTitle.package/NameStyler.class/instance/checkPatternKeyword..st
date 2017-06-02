checks
checkPatternKeyword: aString

	(aString includes: $_) ifTrue: [^{ TextColor red }].
	^{}