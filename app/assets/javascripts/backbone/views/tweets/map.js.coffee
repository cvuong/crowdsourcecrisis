class Cc.Views.MapView extends Backbone.Views

  el: "#main"

  template: JST["backbone/templates/tweets/map"]

  initialize: ->
    @render()
    @addAll()

  addAll: ->
    @collection.forEach(@addOne, @)

  addOne: (model) ->