(function($) {
	$("#MainMenu li.children").hover(
		function() { 
			$(this).addClass("active").find("ul").show(); 
			//$(this).find('i.fa').removeClass('fa-caret-down').addClass('fa-caret-up');
		},
		function() { 
			$(this).removeClass("active").find("ul").hide();
			//$(this).find('i.fa').removeClass('fa-caret-up').addClass('fa-caret-down');
		}
	);
})(jQuery);