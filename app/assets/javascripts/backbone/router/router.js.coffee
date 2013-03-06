class Cc.Routers.Router extends Backbone.Router

  initialize: (options) ->
    @tweets = new Cc.Collection.TweetsCollection()
    @tweets.reset options.tweets

  routes:
    "map"    : "map"
    "tweets" : "tweets"
    "find"   : "find"

  map: ->
    @view = new Cc.Views.MapView({ collection: @tweets })

  tweets: ->
    @view = new Cc.Views.TweetsView({ collection: @tweets })

  find: ->
    @view = new Cc.Views.FindView({ collection: @tweets })