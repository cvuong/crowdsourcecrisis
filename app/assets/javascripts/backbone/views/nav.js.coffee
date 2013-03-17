class Cc.Views.NavView extends Backbone.View

  el: "#navigation"

  template: JST["backbone/templates/nav"]

  events:
    "click .nav-link": "setActive"

  initialize: ->
    @render()

  render: ->
    @$el.html @template()
    @

  setActive: (ev) ->
    @removeActive()
    $(ev.target).parent().addClass("active")

  removeActive: ->
    @$el.find('.active').removeClass("active")
