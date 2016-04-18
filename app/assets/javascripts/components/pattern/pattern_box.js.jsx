var PatternBox = React.createClass({
  render: function() {
    return (
      <ul>
      {this.props.patterns.map(function(pattern, i) {
          return <Pattern key={i} data={pattern}/>;
      })}
      </ul>
    );
  }
});
