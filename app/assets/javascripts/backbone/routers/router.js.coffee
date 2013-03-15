class Cc.Routers.Router extends Backbone.Router

  initialize: (options) ->
    @tweets = new Cc.Collections.TweetsCollection()
    @tweets.reset options.tweets

  routes:
    ""         : "map"
    "map"      : "map"
    "activity" : "activity"
    "find"     : "find"

  map: ->
    console.log("Map Route")
    @view = new Cc.Views.MapView({ collection: @tweets })

  activity: ->
    console.log("Activity Route")
    @view = new Cc.Views.ActivityView({ collection: @tweets })

  find: ->
    console.log("Find Route")
    @view = new Cc.Views.FindView({ collection: @tweets })