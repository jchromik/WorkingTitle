private
performCheck: aSymbol with: aString

	(self checks includes: aSymbol) ifTrue: [
		^ self perform: (self methodForCheck: aSymbol) with: aString ].
	
	^ {}