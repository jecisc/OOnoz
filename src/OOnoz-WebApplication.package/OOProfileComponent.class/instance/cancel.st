action
cancel
	self currentUser restoreFromMemento: self memento.
	super cancel