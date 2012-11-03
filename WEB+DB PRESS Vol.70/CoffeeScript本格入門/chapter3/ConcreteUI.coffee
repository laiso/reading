class ConcreteUI extends EventModule
  doSomething: ->
    @trigger 'doSomething'
    @

###
# テスト
ui = new ConcreteUI
ui.on 'doSomething', -> alert 'do it!'
ui.doSomething()

###