as yet unclassified
for: aString

	^self evalBlock: [
		(NewBalloonMorph string: aString for: self currentWorld) popUpForHand: self currentHand ].