class Cc.Views.NavView extends Backbone.View

  el: "#navigation"

  template: JST["backbone/templates/nav"]

  initialize: ->
    @render()

  render: ->
    @$el.html @template()
    @