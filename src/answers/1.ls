{Obj: {let: let$}} = require \glad-functions

# Mock
class Hoge
  -> @num = it
  appendChild: -> @num * it |> console~log
fuga =
  div: [(new Hoge 1), (new Hoge 2), (new Hoge 3)]
  span: [1, 2, 3]
document =
  querySelectorAll: -> fuga.(it)

module.exports = ->
  <[div span]>
  |> map document.query-selector-all
  |> apply zip
  |> each apply let$ _, \appendChild, _

