var CompanyBox = React.createClass({
  render: function() {
    return(
      <ul>
      {this.props.companies.map(function(company, i) {
          return <Company key={i} data={company}/>;
      })}
      </ul>
    );
  }
});
