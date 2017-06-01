as yet unclassified
checkParameterName: aString

	(aString first = $a) ifFalse: [^{ TextColor red }].
	(aString includes: $_) ifTrue: [^{ TextColor red }].
	^{}