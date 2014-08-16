var locationsURL = "http://localhost:3000/locations.json"

$(document).ready(function(){
	
	$.getJSON(locationsURL).done(function (chapter) { 
		console.log(chapter);
		_.each(chapter, function (plot) {
			console.log(plot);

			$(".us_map").mapael({
				map : {
					name : "usa_states",
					cssClass : "map",
					tooltip : {
						cssClass : "mapTooltip" //class name of the tooltip container
						},
					defaultArea : {
						attrs : {
							fill : "#282828",
							stroke: "#9a9a9a",
						},
						attrsHover : {
							fill : "#d8ae64"
						}
					},
					defaultPlot : {
						type : "circle",
						href : "#",
						attrs: {
							fill : "#f95a61"
						}
					},
					eventHandlers: {
						click : function (){
							this.href="locations/<%= slug %>"  
						}
					}
				},
				plots: {},	
			});
		});
		var newPlots = {
			"<%= location %>" : {
			latitude: "<%= latitude %>",
			longitude: "<%= longitude %>",
			//href: "locations/<% slug %>",
			//tooltip: {content : "<% location %>"}
			}
		};
		$(".us_map").trigger("update", newPlots);
	});
});

