class Cc.Views.MapView extends Backbone.View

  el: "#map"

  template: JST["backbone/templates/tweets/map"]

  initialize: ->
    @render()

  render: ->
    $("#activity").hide()
    $("#map").css("position", "relative")
    $("#map").css("left", "0px")
    $(window).resize()
    @
