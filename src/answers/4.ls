{$_find, $_at, $$} = require \glad-functions

module.exports = ->
  cherry_pick 3, [9, 7, 8] |> console~log
  cherry_pick 10, [9, 7, 8] |> console~log

cherry_pick = (x, ns)->
  | x <= 0 => ns
  | _ =>
    cherry_pick (x - 1), (
      break-list (is maximum ns), ns
      |> $_at 1, $$ [(head >> ( - 1)), tail]
      |> flatten
    )

# Another
cherry_pick = (x, ns)->
  | x <= 0 => ns
  | _ =>
    cherry_pick (x - 1), (
      $_at (elem-index (maximum ns), ns), (- 1), ns
    )

# Another
cherry_pick = (x, ns)->
  | x <= 0 => ns
  | _ =>
    cherry_pick (x - 1), (
      $_find (is maximum ns), (- 1), ns
    )

