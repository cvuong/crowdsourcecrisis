class Cc.Models.Tweet extends Backbone.Model
  paramRoot: 'tweet'

class Cc.Collections.TweetsCollection extends Backbone.Collection
  model: Cc.Models.Tweet
  url: '/tweets'
