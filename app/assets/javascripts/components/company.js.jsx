var Company = React.createClass({
  render: function() {
    var data = this.props.data;
    return(
        <li>{data.name}</li>
    );
  }
});
