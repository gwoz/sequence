var Client = React.createClass({
  render: function() {
    var data = this.props.data;
    return(
      <section id='client-content'>
        <li>{data.name}</li>
      </section>
    );
  }
});
