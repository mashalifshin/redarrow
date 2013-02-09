$(document).ready(function(){
	$('.thumbnail').hover(function() {
		var image_data = $(this).data('image');
		var image_src = image_data['image']['url'];
		var alt_text = [image_data['artist'], image_data['title'],
				image_data.year['to_s'], image_data['media'],
				image_data['dimensions']].join(" - ");
		var label_dom = $('<div class="label">' + image_data['artist'] +
						 '<br /><span class="work_title">' + image_data['title'] + '</span>, ' + image_data['year'] +
						 '<br />' + image_data['media'] +
						 '<br />' + image_data['dimensions'] +
						 '</div>');

		$(this).closest('.exhibition').find('.full_size').attr('src', image_src);
		$(this).closest('.exhibition').find('.full_size').attr('alt', alt_text);
		$(this).closest('.exhibition').find('.label').replaceWith(label_dom);
	});
});