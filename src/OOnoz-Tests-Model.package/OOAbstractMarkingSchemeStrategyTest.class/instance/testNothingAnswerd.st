tests
testNothingAnswerd
	| answerMap |
	answerMap := Dictionary new.
	self answers
		do: [ :answer | answerMap at: answer put: false ].
	self
		assert: (self actualClass computeResultFrom: answerMap)
		equals: self nothingCheckedResult