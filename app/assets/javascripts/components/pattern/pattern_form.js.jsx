var PatternForm = React.createClass({
  handleSubmit: function(event){
    event.preventDefault();
    var content = {
      pattern: {
        company_id: 1,
        name: this.refs.patternName.value,
        description: this.refs.patternDescription.value
      }
    };
    $.post('/companies/1/patterns', content, function(response){
    }.bind(this));
  },
  render: function() {
    return (
      <div>
        <h1>New Pattern</h1>
        <form id='pattern-form' onSubmit={this.handleSubmit}>
          <label for="name">Name</label>
          <input type='text' 
                 ref='patternName'
                 id='patternName' 
                 name='name'>
          </input>
          <label for="description">Description</label>
          <input type='text' 
                 ref='patternDescription'
                 id='patternDescription'
                 name='description'>
          </input>
          <input type='submit' value='Submit'></input>
        </form>
      </div>
    );
  }
});
