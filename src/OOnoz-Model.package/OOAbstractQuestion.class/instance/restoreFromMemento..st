momento
restoreFromMemento: aMemento
	"I am used for the memento pattern. My goal is to set my state to the set of the memento.
	I let the questions manage their own memento."

	self description: aMemento description.
	self answers: aMemento answers.
	self explanation: aMemento explanation