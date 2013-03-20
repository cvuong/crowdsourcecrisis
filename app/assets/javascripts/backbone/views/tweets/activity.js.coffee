class Cc.Views.ActivityView extends Backbone.View

  el: "#activity"

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
    @$el.show()
    @$el.html @template()
    $("#map").css("position", "absolute")
    $("#map").css("left", "-1000px")
    @