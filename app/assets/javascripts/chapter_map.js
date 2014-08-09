
$(function(){
 	$(".chapter_map").mapael({
		map : {
			name : "usa_states"
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
			'pa' : {
				latitude: 19.493204,
				longitude: -154.8199569,
				tooltip: {content : "Pahoa"}
			}
		}
	});
});