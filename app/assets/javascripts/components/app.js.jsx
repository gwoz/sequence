var App = React.createClass({
  getInitialState: function() {
    return {
      companies: []
    }
  },
  componentWillMount() {
    this.fetchData();
  },
  fetchData() {
    $.get('/companies', function(data) {
      this.setState({
        companies: data
      });
    }.bind(this));
  },
  render: function() {
    var companies = this.state.companies;
    return (
      <section>
        <ul>
          <CompanyBox companies={companies}/>
        </ul>
      </section>
    );
  }
});