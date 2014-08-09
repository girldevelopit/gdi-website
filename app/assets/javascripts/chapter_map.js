
$(function(){
 	$(".chapter_map").mapael({
		map : {
			name : "usa_states",
			cssClass : "map",
			tooltip : {
				cssClass : "mapTooltip" //class name of the tooltip container
			},
			defaultArea : {
				attrs : {
					fill : "#282828",
					stroke: "#282828"
				}
			},
			defaultPlot : {
				type : "circle",


			}
		},
		plots: {
			'ny' : {
				latitude: 40.717079,
				longitude: -74.00116,
				tooltip: {content : "New York"}
			},
			'an' : {
				latitude: 61.2108398, 
				longitude: -149.9019557,
				tooltip: {content : "Anchorage"}
			},
			'sf' : {
				latitude: 37.792032,
				longitude: -122.394613,
				tooltip: {content : "San Francisco"}
			},
		}
	});
});