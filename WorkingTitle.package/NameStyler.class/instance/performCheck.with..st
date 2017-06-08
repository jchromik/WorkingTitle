private
performCheck: aSymbol with: aString
	
	^ (self class canUnderstand: aSymbol)
		ifTrue: [ self perform: aSymbol with: aString ]
		ifFalse: [ {} ]