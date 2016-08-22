<div id="Logo" style="$LogoStyle">
	<% if ApplicationLogoText %>
		<a href="$ApplicationLink">$ApplicationLogoText</a><br />
	<% end_if %>
</div>

<ul id="MainMenu">
	<% control GroupedMainMenu %>
		<% if Children %>
			<li class="$LinkingMode children">
				<a href="$Link" class="group">$Group<i class="fa fa-caret-down" aria-hidden="true"></i></a>
				<ul>
					<% control Children %>
						<li class="$LinkingMode" id="Menu-$Code"><a href="$Link">$Title</a></li>
					<% end_control %>
				</ul>
			</li>
		<% else %>
			<li class="$LinkingMode" id="Menu-$Code"><a href="$Link">$Title</a></li>
		<% end_if %>
	<% end_control %>
</ul>
<% if SubsiteList %>
<form id="SubsiteActions">
	<fieldset>
		$SubsiteList
	</fieldset>
</form>	
<% end_if %>
