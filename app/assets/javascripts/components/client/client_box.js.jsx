var ClientBox = React.createClass({

  render: function() {
    return(
      <ul>
      {this.props.clients.map(function(client, i) {
          return <Client key={i} data={client}/>;
      })}
      </ul>
    );
  }
});
