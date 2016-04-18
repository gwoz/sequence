var PatternForm = React.createClass({
  handleSubmit: function(event){
    event.preventDefault();
    var $patternContent = this.refs.patternContent
    var content = {
      pattern: {
        content: $patternContent.value
      }
    };
    $.post('/patterns', content, function(response){
      this.props.onUpdate();
      $patternContent.value = '';
    }.bind(this));
  },
  render: function() {
    return (
      <form id='pattern-form' onSubmit={this.handleSubmit}>
        <input type='text' ref='patternContent' id='new-pattern-name' name='name'></input>
        <input type='text' ref='patternContent' id='new-pattern-description' name='description'></input>
        <input type='hidden' ref='patternContent' id='new-pattern-companyId' name='companyId'></input>
        <input type='submit' value='Submit'></input>
      </form>
    );
  }
});
