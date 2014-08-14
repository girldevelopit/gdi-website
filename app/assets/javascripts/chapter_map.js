
$(document).ready(function(){
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
					  
				}
			}
		},
		plots: {
			'ny' : {
				latitude: 40.717079,
				longitude: -74.00116,
				tooltip: {content : "New York"}
			},	
		}
	});
});