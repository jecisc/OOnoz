action
save
	[ self mcq validate.
	self currentUser addMCQ: self mcq.
	self mcq save.
	self currentUser save.
	self answer: true ]
		on: OOInvalidObject
		do: [ self hasBeenValidated: true ]