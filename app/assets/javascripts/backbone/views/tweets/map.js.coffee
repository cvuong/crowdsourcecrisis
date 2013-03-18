class Cc.Views.MapView extends Backbone.View

  el: "#main"

  template: JST["backbone/templates/tweets/map"]

  initialize: ->
    @render()
    @addAll()

  addAll: ->
    @collection.forEach(@addOne, @)

  addOne: (model) ->

  render: ->
    @$el.html @template()
    @
