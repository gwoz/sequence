var Pattern = React.createClass({
  render: function() {
    var data = this.props.data;
    return(
      <section id='pattern-content'>
        <li>{data.name}</li>
        <li>{data.description}</li>
      </section>
    );
  }
});
