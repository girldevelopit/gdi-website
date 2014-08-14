
$(document).ready(function(){
	$.getJSON().done(function() { //need a url from the backend here in the ajax request
		/*var that = this;
		$(".us_map").trigger('update'){
			newPlots: {
				latitude: "that.lat",
				longitude: "that.long",
				href: ""
				tooltip: {content : "that.location"}
			}
		};*/
	});
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
					this.href="locations/26"  
				}
			}
		},
		plots: {
			'nc' : {
				latitude: 35.7806,
				longitude: -78.6389,
				tooltip: {content : "Raleigh-Durham"}
			},	
		}
	});
});

