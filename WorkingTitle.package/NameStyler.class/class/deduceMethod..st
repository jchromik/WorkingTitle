private
deduceMethod: aString

	^ (aString findTokens: { Character cr }) first findSelector