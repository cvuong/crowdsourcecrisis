class CrowdsourceCrisis.Models.Tweet extends Backbone.Model
  paramRoot: 'tweet'

class CrowdsourceCrisis.Collections.TweetsCollection extends Backbone.Collection
  model: CrowdsourceCrisis.Models.Tweet
  url: '/tweets'
