class Cc.Routers.Router extends Backbone.Router

  initialize: (options) ->
    @tweets = new Cc.Collections.TweetsCollection()
    @tweets.reset options.tweets

  removeActive: ->
    $("#navigation").find('.active').removeClass("active")

  setActive: (ev) ->
    @removeActive()
    ev.parent().addClass("active")

  routes:
    ""         : "map"
    "map"      : "map"
    "activity" : "activity"

  map: ->
    console.log("Map Route")
    @removeActive
    @setActive($("#map-link"))
    @view = new Cc.Views.MapView({ collection: @tweets })

  activity: ->
    console.log("Activity Route")
    @removeActive
    @setActive($("#activity-link"))
    @view = new Cc.Views.ActivityView({ collection: @tweets })
