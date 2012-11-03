$ ->
  # Deferredオブジェクトで非同期処理をシンプルに扱う
  $.get('/api/foo').then (aid) ->
    $.get('/api/bar', {id: aid})
      # .then -> $.get('/api/xxxx', {id: aid}) # 失敗させてみる
  .done (msg) ->
    $('#target').text msg
  .fail -> alert 'Error'

  # on/offによりモダンなイベントを制御する
  $('table').on 'click', 'td', ->
    $(@).css 'color', 'red'

