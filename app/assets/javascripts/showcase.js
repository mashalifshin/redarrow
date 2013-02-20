$(document).ready(function(){
	// Preload images to avoid lag on thumbnail hover.
	$.each($('.thumbnail'), function() {
		var image_src = $(this).data('image')['image']['full_size']['url'];
		new Image().src = image_src;
	});

	// Display full sized showcase image on thumbnail hover.
	$('.thumbnail').hover(function() {
		var image_data = $(this).data('image');
		// If we are on the artists page, we don't show the artist name again in the label:
		var artist_name = image_data['artist'] === undefined ? "" : image_data['artist'];
		var image_src = image_data['image']['full_size']['url'];
		var alt_text = [artist_name, image_data['title'],
				image_data.year['to_s'], image_data['media'],
				image_data['dimensions']].join(" - ");
		var label_dom = $('<div class="label">' + artist_name +
						 '<br /><span class="work_title">' + image_data['title'] + '</span>, ' + image_data['year'] +
						 '<br />' + image_data['media'] +
						 '<br />' + image_data['dimensions'] +
						 '</div>');

		$(this).closest('.info').siblings('.work').find('.full_size').attr('src', image_src);
		$(this).closest('.info').siblings('.work').find('.full_size').attr('alt', alt_text);
		$(this).closest('.info').find('.label').replaceWith(label_dom);
	});
});