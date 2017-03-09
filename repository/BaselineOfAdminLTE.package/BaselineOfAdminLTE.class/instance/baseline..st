baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec
				package: 'AdminLTE-Core-Canvas';
				package: 'AdminLTE-Core-Libraries';
				package: 'AdminLTE-Core-Announcements';
				package: 'AdminLTE-Core-Widgets' with: [ spec requires: #('AdminLTE-Core-Components') ];
				package: 'AdminLTE-Core-Components' with: [ spec requires: #('AdminLTE-Core-Canvas' 'AdminLTE-Core-Libraries' 'AdminLTE-Core-Announcements') ];
				package: 'AdminLTE-Core-Panels' with: [ spec requires: #('AdminLTE-Core-Components') ];
				package: 'AdminLTE-Examples-Core' with: [ spec requires: #('AdminLTE-Core-Components' 'AdminLTE-Core-Widgets' 'AdminLTE-Core-Panels') ].
			spec group: 'default' with: #('AdminLTE-Examples-Core') ]