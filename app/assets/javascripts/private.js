$(document).ready(function(){
	$("a.menu__projects[data-remote]").on("ajax:success", function(e, data, status, xhr){
		var projects = document.getElementsByClassName('projects')[0];
		projects.innerHTML = "";
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
		projects.style.display = 'block';
	}).on("ajax:error", function(e, data, status, error) { alert(error);});;


	$(document).mouseup(function(e) {
		var projects = document.getElementsByClassName('projects')[0];

		if (!e.target.className !== 'projects' 
				)
		{
			projects.style.display = 'none';
		}
	});
});
