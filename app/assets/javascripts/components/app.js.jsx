var App = React.createClass({
  getInitialState: function() {
    return {
      companies: [],
      patterns: []
    }
  },
  componentWillMount() {
    this.fetchCompanies();
    this.fetchPatterns();
  },
  fetchCompanies() {
    $.get('/companies', function(data) {
      this.setState({
        companies: data
      });
    }.bind(this));
  },
  fetchPatterns() {
    $.get('companies/1/patterns', function(data) {
      this.setState({
        patterns: data
      });
    }.bind(this));
  },
  render: function() {
    var companies = this.state.companies;
    var patterns = this.state.patterns
    return (
      <div>
        <section id='companies-container'>
          <div>
            <h1>Companies</h1>
          </div>
          <ul>
            <CompanyBox companies={companies}/>
          </ul>
        </section>
        <section id='patterns-container'>
          <div>
            <h1>Patterns</h1>
          </div>
          <ul>
            <PatternBox patterns={patterns}/>
          </ul>
        </section>
      </div>
    );
  }
});