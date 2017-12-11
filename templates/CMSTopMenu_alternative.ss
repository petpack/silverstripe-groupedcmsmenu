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
<div>
<form id="SubsiteActions">
	<input type="text" id="SubsiteSearch" value="$CurrentSubsiteTitle" />
	<input type="hidden" id="SubsiteID" value="$CurrentSubsiteID" />
	<div class="filters">
		$SubsiteFilters
	</div>
	$SubsiteList
	<div class="icon fa fa-caret-down"></div>
</form>
</div>	
<% end_if %>
