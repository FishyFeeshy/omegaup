
<div class="post">
	<div class="copy wait_for_ajax" id="contest_list" >
	</div>
</div>
<script>
	(function(){
		omega.getContests(function(contests){
			// Got the contests, lets draw them

			var html = "<table><tr>"
					+ "<td>Title</td>"
					+ "<td>Descripcion</td>"
					+ "<td>Inicio</td>"
					+ "<td>fin</td>"
					+ "<td></td>"
					+ "</tr>";

			for( i = 0 ; i < contests.number_of_results; i++ ) {
				html += "<tr>"
					+ "<td>" + contests.results[i].title + "</td>"
					+ "<td>" + contests.results[i].description + "</td>"
					+ "<td>" + contests.results[i].start_time + "</td>"
					+ "<td>" + contests.results[i].finish_time + "</td>"
					+ "<td><button value='Ver concurso'>asdklfj</button></td>"
					+ "</tr>";
			}

			html += "</table>";

			$("#contest_list").removeClass("wait_for_ajax").append(html);
		});
	})();
</script>

