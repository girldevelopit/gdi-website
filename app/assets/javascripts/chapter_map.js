var locationsURL = "http://localhost:3000/locations.json";

$(document).ready(function(){
	var plots = []

	$.getJSON(locationsURL).done(function (chapters) {
		_.each(chapters, function (plot) {
			newobj = {
				value: plot.location,
				latitude: plot.latitude,
				longitude: plot.longitude,
				tooltip: {content: plot.location},
				href: "locations/" + plot.slug
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
					fill : "#fbcfc6",
					animDuration: 300 
				}
			},
			defaultPlot : {
				type : "circle",
				href : "#",
				size : 15,
				attrs: {
					fill : "#f95a61"
				},
				attrsHover: {

				}
			},
		},

		plots : plots
		})
	})
});
