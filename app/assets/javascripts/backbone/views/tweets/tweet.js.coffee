class Cc.Views.TweetView extends Backbone.View

  tagName: "li"

  template: JST["backbone/templates/tweets/tweet"]

  render: ->
    @$el.html(@template(@model.toJSON()))
    return this