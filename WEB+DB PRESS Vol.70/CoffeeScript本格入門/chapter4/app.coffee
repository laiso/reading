# twitter

getTweets = (query) ->
  $.Deferred (defer) ->
    $.ajax
      url: 'http://search.twitter.com/search.json'
      dataType: 'jsonp'
      data:
        resultType: 'recent'
        rpp: 10
        page: 1
        q: query
    .
    done (res) ->
      defer.resolve res.results
  .promise()

# models
class Tweet extends Backbone.Model

class TweetList extends Backbone.Collection
  model: Tweet
  update: (query)->
    @trigger 'updatestart'
    getTweets(query).done (tweets)=>
      @reset tweets
      @trigger 'updatesuccess'

tweets = new TweetList


# views
class TwitterItemDiv extends Backbone.View
  tagName: 'div'
  className: 'item'
  render: ->
    compiled = _.template """
                          <a href="http://twitter.com/<%- from_user %>">@<%- from_user %></a>
                          <%- text %>
                          """
    @$el.html (compiled @model.toJSON())
    @

class TweetsDiv extends Backbone.View
  initialize: ->
    tweets.on 'updatestart', => @$el.empty()
    tweets.on 'updatesuccess', => @refresh()
    @
  refresh: ->
    tweets.each (tweet) =>
      view = new TwitterItemDiv {model: tweet}
      @$el.append view.render().el
    @


# Run
$ ->
  tweetsDiv=new TweetsDiv {el: $('#tweets')}
  $('#search').click ->
    query= $('#query').val()
    tweets.update query
