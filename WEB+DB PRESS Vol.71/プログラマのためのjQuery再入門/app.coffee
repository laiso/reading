$ ->
  $('table').on 'click', 'td', ->
    $(@).css 'color', 'red'