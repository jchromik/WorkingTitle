checks
checkPatternTempVar: aString

	(aString includes: $_) ifTrue: [^{ TextColor red }].
	^{}