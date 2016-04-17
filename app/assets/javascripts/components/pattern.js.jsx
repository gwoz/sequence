var Pattern = React.createClass({
  propTypes: {
    name: React.PropTypes.string,
    description: React.PropTypes.string,
    companyId: React.PropTypes.node
  },

  render: function() {
    return (
      <div>
        <div>Name: {this.props.name}</div>
        <div>Description: {this.props.description}</div>
        <div>Company: {this.props.companyId}</div>
      </div>
    );
  }
});
