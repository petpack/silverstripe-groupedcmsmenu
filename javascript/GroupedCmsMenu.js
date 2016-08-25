(function($) {
	$("#MainMenu li.children").hover(
		function() { 
			$(this).addClass("active").find("ul").stop(true,true).slideDown(333); 
			//$(this).find('i.fa').removeClass('fa-caret-down').addClass('fa-caret-up');
		},
		function() { 
			$(this).removeClass("active").find("ul").stop(true,true).slideUp(333);
			//$(this).find('i.fa').removeClass('fa-caret-up').addClass('fa-caret-down');
		}
	);
})(jQuery);