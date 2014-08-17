var locationsURL = "http://localhost:3000/locations.json";

$(document).ready(function(){
	var plots = []

	$.getJSON(locationsURL).done(function (chapters) {
		// 	console.log(chapters);
			// _.each(chapter, function (plot) {
			// 	console.log(plot);
			// });
		_.each(chapters, function (plot) {
			newobj = {
				value: plot.location,
				latitude: plot.latitude,
				longitude: plot.longitude
			}
			plots.push(newobj);
		})
		console.log("yey!");
	}).done(function () {
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
					this.href="locations/<%#= @locations.location %>" // needs to be something else
				}
			}
		},

		plots : plots
		})
	})
});
