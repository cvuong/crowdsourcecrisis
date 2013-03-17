class Cc.Views.ActivityView extends Backbone.View

  el: "#main"

  template: JST["backbone/templates/tweets/activity"]

  initialize: ->
    @render()
    @addAll()

  addAll: ->
    @collection.forEach(@addOne, @)

  addOne: (model) ->
    @view = new Cc.Views.TweetView({ model: model })
    @$el.find("#activity-list").append @view.render().el

  render: ->
    @$el.html @template()
    @