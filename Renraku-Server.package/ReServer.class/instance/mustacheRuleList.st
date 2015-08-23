mustache
mustacheRuleList

	^ '
	<div class="row">
	<div class="col-sm-12">
	<h2>Feedback About SmallLint Rules</h2>
	</div>
	</div>
	<div class="row">
	<div class="col-sm-6">
	<h4>Positive</h4>
<table class="table table-hover table-condensed">
<tr>
   <th>Rule name</th>
   <th class="text-right"># of feedbacks</th>
 </tr>
	{{# goodRules }}
	<tr>
		<td> {{ rule }} </td>
		<td  class="text-right"> {{ number }} </td>
	</tr>
	{{/ goodRules }}
</table>
</div>
<div class="col-sm-6">
	<h4>Negative</h4>
<table class="table table-hover table-condensed">
<tr>
   <th>Rule name</th>
   <th class="text-right"># of feedbacks</th>
 </tr>
	{{# badRules }}
	<tr>
		<td> {{ rule }} </td>
		<td  class="text-right"> {{ number }} </td>
	</tr>
	{{/ badRules }}
</table>
</div>
</div>' 