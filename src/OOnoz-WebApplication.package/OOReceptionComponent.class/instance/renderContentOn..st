rendering
renderContentOn: html
	html text: 'C''est l''écran d''accueil qu''il va falloir faire.'.
	html anchor
		callback: [ self rootComponent setInstanceOf: OOTestComponent ];
		with: [ html button: 'Lancer le QCM d''exemple' ]