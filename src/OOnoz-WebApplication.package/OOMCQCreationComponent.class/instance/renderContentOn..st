rendering
renderContentOn: html
	html div
		class: #'text-center';
		with: [ html heading: self title.
			html
				tbsRow: [ html tbsColumn
						mediumSize: 8;
						mediumOffset: 2;
						with: [ html paragraph: String loremIpsum ] ] ].
	html hr.
	html
		form: [ self renderMCQFormsOn: html.
			self questions doWithIndex: [ :aQuestion :ind | self renderQuestionFormFor: ind on: html ].
			html hr.
			html tbsContainer
				class: #'text-center';
				with: [ html tbsButton
						bePrimary;
						beOutline;
						beSubmit;
						callback: [ 1halt. self save ];
						with: 'Sauver' ] ]