$(function(){
	var btn_movil = $('#nav-mobile'),
	menu = $('#menu').find('ul');
	btn_movil.on('click', function (e){
		e.preventDefault();
		var el = $(this);
		el.toggleClass('nav-active');
		menu.toggleClass('open-menu');
	})
});