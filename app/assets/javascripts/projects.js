var projectsReady = function() {
	$('#new_project').on('submit', function() {
		$(this).find('.errors').html('');
	});
};
$(document).on('ready', projectsReady);
$(document).on('page:load', projectsReady);