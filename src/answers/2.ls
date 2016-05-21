{$, act, Obj: {let: let$}} = require \glad-functions

# Mock
class Div
  -> @num = it
  append-child: ->
    console.log "span##{it.num} into div\##{@num}"
class Span
  -> @num = it
dom =
  div: [(new Div 1), (new Div 2), (new Div 3), (new Div 4)]
  span: [(new Span 1), (new Span 2), (new Span 3)]
document =
  querySelectorAll: -> dom.(it)



module.exports = ->
  <[div span]>
  |> map document.query-selector-all
  |> zip-with $, [(drop 1), reverse]
  |> apply zip
  |> each apply let$ _, \appendChild, _

  # Another
  <[div span]>
  |> map document.query-selector-all
  |> zip-with $, [reverse, id]
  |> apply zip
  |> each apply let$ _, \appendChild, _

  # Another
  <[div span]>
  |> map document.query-selector-all
  |> zip-with $, [tail, reverse]
  |> apply zip
  |> each apply let$ _, \appendChild, _

