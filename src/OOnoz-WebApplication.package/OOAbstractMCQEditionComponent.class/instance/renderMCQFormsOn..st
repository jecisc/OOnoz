rendering
renderMCQFormsOn: html
	html tbsContainer
		class: #'text-center';
		with: [ html heading
				level2;
				class: #h5;
				with: 'Configuration' ].
	self renderMCQErrorOn: html.
	html
		tbsRow: [ html tbsColumn
				mediumSize: 6;
				mediumOffset: 3;
				with: [ html
						tbsFormGroup: [ | id label |
							label := 'Titre du questionnaire'.
							html label
								for: (id := html nextId);
								tbsScreenReaderOnly;
								with: label.
							html textArea
								tbsFormControl;
								id: id;
								placeholder: label;
								callback: [ :title | self mcq title: title ];
								pattern: '.{5,}';
								value: self mcq title;
								rows: 1 ].
					html
						tbsFormGroup: [ | id label |
							label := 'Description du questionnaire'.
							html label
								for: (id := html nextId);
								tbsScreenReaderOnly;
								with: label.
							html textArea
								tbsFormControl;
								id: id;
								placeholder: label;
								callback: [ :descr | self mcq description: descr ];
								value: self mcq description;
								rows: 1 ].
					html
						tbsFormGroup: [ | id |
							html label
								for: (id := html nextId);
								tbsScreenReaderOnly;
								with: 'Barème'.
							html select
								class: 'form-control';
								list: (OOAbstractMarkingSchemeStrategy allSubclasses reject: #isAbstract);
								labels: [ :each | each label ];
								selected: self mcq markingScheme;
								callback: [ :class | self mcq markingScheme: class ] ] ] ]