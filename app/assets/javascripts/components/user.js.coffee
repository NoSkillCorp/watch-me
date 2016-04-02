@User = React.createClass
  render: ->
    React.DOM.tr null,
      React.DOM.td null, @props.user.id
      React.DOM.td null, @props.user.email