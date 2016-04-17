var Company = React.createClass({
  render: function() {
    var data = this.props.data;
    return(
      <section id='company-content'>
        <li>{data.name}</li>
      </section>
    );
  }
});
