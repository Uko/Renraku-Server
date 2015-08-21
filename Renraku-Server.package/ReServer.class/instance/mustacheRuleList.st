mustache
mustacheRuleList

	^ '
	<h3>Negative Feedbacks About SmallLint Rules</h3>
<table class="table table-hover table-condensed">
<tr>
   <th>Rule name</th>
   <th class="text-right">Complaints amount</th>
 </tr>
	{{# rules }}
	<tr>
		<td> {{ rule }} </td>
		<td  class="text-right"> {{ number }} </td>
	</tr>
	{{/ rules }}
</table>' 