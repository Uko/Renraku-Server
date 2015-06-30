api projectSpec
baseline: spec
	<baseline>
	
	spec for: #'pharo4.x' do: [
		spec
			package: 'Renraku-Server' with: [ spec requires: #(Teapot Voyage) ].
			
		spec project: 'Teapot' with: [
      		spec 
        		className: 'ConfigurationOfTeapot';
        		repository: 'http://smalltalkhub.com/mc/zeroflag/Teapot/main';
        		version: '0.91' ].
	
		spec project: 'Voyage' with: [
      		spec 
        		className: 'ConfigurationOfVoyageMongo';
        		repository: 'http://smalltalkhub.com/mc/estebanlm/Voyage/main';
        		version: '1.3.3' ] ] 