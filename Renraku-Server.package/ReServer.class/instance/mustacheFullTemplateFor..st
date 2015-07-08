mustache
mustacheFullTemplateFor: aPartial

	^ TeaOutput mustacheHtml: '
<!DOCTYPE html>
<html lang="en">',
	self mustacheHead,
	self mustacheHeader,
	aPartial,
	self mustacheFooter,
'</html>'