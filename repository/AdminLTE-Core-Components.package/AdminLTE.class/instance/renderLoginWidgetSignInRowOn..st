rendering-widgets-login
renderLoginWidgetSignInRowOn: canvas
	canvas tbsRow
		with: [ canvas tbsColumn
				extraSmallSize: 8;
				with: [ canvas div
						class: 'checkbox';
						with: [ canvas label
								with: [ canvas checkbox.
									canvas text: 'Remember me' ] ] ].
			canvas tbsColumn
				extraSmallSize: 4;
				with: [ canvas tbsButton
						bePrimary;
						beBlock;
						callback: [ user := AdminLTEExampleUser new ];
						with: [ canvas text: 'Sign In' ] ] ]