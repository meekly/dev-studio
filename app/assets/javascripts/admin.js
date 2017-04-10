//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require private
//= require articles
//= require projects
//= require tasks
//= require messages


function notice(timeSec)
{
    var notification = document.getElementsByClassName('notice')[0];
    if (timeSec === undefined || isNaN(timeSec)) {
	timeSec = 3;
    }
		$(notification).fadeIn();
    setTimeout(function(){
			$(notification).fadeOut();
    }, timeSec * 1000);
}
