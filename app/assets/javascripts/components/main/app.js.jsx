var App = React.createClass({
  getInitialState: function() {
    return {
      patterns: [],
      clients: []
    }
  },
  componentWillMount() {
    this.fetchPatterns();
    this.fetchClients();
  },
  fetchClients() {
    $.get('companies/1/clients', function(data) {
      this.setState({
        clients: data
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
    var clients = this.state.clients;
    var patterns = this.state.patterns
    return (
      <div>
        <section id='clients-container'>
          <div>
            <h1>Clients</h1>
          </div>
            <ClientBox clients={clients}/>
        </section>
        <PatternForm />
        <section id='patterns-container'>
          <div>
            <h1>Patterns</h1>
          </div>
            <patternForm />
            <PatternBox patterns={patterns}/>
        </section>
      </div>
    );
  }
});
