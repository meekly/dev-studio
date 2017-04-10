$(document).ready(function(){
	$.ajax({
		url: "/projects.json",
		success: function(data) {
		var projects = document.getElementsByClassName('projects')[0];
			$(data).each(function(index, project) {
				if (!project.finished) {
					var li = document.createElement('li');
					var href = document.createElement('a');
					href.href = '/projects/' + project.id;
					href.innerHTML = project.name;
					li.appendChild(href);
					projects.appendChild(li);
			}
		});
		}
	});
	$("li.menu__projects").on('mouseover', function() {
		var projects = document.getElementsByClassName('projects')[0];
		projects.style.display = 'block';
	});
	$(".projects").on('mouseleave', function() {
		var projects = document.getElementsByClassName('projects')[0];
		projects.style.display = 'none';
	});

	$(document).mouseup(function(e) {
		var projects = document.getElementsByClassName('projects')[0];

		if (!e.target.className !== 'projects')
		{
			projects.style.display = 'none';
		}
	});
});
