var Pattern = React.createClass({
  render: function() {
    var data = this.props.data;
    return(
      <section id='pattern-content'>
        <li><h2>{data.name}</h2></li>
        <li>{data.description}</li>
      </section>
    );
  }
});
