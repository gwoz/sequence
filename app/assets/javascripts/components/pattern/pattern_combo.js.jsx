var PatternCombo = React.createClass({

	componentWillMount() {
	  console.log('here')
	    $(".gridster ul").gridster({
      widget_margins: [10, 10],
      widget_base_dimensions: [140, 140]
    });
	},

	render: function() {
		return (
			<div class="gridster">
		    <ul>
		        <li data-row="1" data-col="1" data-sizex="1" data-sizey="1">test</li>
		        <li data-row="2" data-col="1" data-sizex="1" data-sizey="1">more</li>
		        <li data-row="3" data-col="1" data-sizex="1" data-sizey="1">some</li>

		        <li data-row="1" data-col="2" data-sizex="2" data-sizey="1">things</li>
		        <li data-row="2" data-col="2" data-sizex="2" data-sizey="2">done</li>

		        <li data-row="1" data-col="4" data-sizex="1" data-sizey="1"></li>
		        <li data-row="2" data-col="4" data-sizex="2" data-sizey="1"></li>
		        <li data-row="3" data-col="4" data-sizex="1" data-sizey="1"></li>

		        <li data-row="1" data-col="5" data-sizex="1" data-sizey="1"></li>
		        <li data-row="3" data-col="5" data-sizex="1" data-sizey="1"></li>

		        <li data-row="1" data-col="6" data-sizex="1" data-sizey="1"></li>
		        <li data-row="2" data-col="6" data-sizex="1" data-sizey="2"></li>
		    </ul>
			</div>
		);
	}
});