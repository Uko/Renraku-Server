api projectSpec
baseline: spec
	<baseline>
	
	spec for: #'pharo4.x' do: [
		spec
			package: 'Renraku-Server' with: [ spec requires: 'Teapot' ].
			
		spec project: 'Teapot' with: [
      spec 
        className: 'ConfigurationOfTeapot';
        repository: 'http://smalltalkhub.com/mc/zeroflag/Teapot/main';
        version: '0.91' ] ] 