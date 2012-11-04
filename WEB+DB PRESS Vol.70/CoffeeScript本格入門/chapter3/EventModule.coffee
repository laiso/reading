class EventModule
  on: (evName, callback) ->
    @_callbacks = {} unless callbacks?
    @_callbacks[evName] = [] unless @_callbacks[evName]?
    @_callbacks[evName].push callback
    @
  trigger: (evName)->
    list = @_callbacks?[evName]
    return @ unless list
    for callback in list
      callback.apply @
    @

###
# テスト
eventModule = new EventModule
eventModule.on 'foo', -> alert 'foo'

$('#firefoo').click (e) ->
  eventModule.trigger 'foo'

###