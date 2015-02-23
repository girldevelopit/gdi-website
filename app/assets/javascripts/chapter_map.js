var chaptersURL = "/chapters.json";

$(document).ready(function(){
	var plots = [];

	$.getJSON(chaptersURL).done(function (chapters) {
		_.each(chapters, function (plot) {
			newobj = {
				value: plot.chapter,
				latitude: plot.latitude,
				longitude: plot.longitude,
				tooltip: {content: plot.chapter},
				href: "chapters/" + plot.slug
			}
			plots.push(newobj);
		})
	}).done(function () {
		$(".us_map").mapael({

		map : {
			name : "usa_states",
			cssClass : "map",
			tooltip : {
				cssClass : "mapTooltip"
				},
			defaultArea : {
				attrs : {
					fill : "#282828",
					stroke: "#9a9a9a",
				},
				attrsHover : {
					fill : "#7a7c7c",
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

		plots : plots,

		})
	})
});
