{$} = require \glad-functions

module.exports = ->
  cherry_pick 3, [9, 7, 8] |> console~log
  cherry_pick 10, [9, 7, 8] |> console~log

cherry_pick = (x, ns)->
  | x <= 0 => ns
  | _ =>
    cherry_pick (x - 1), (
      [maximum >> (is), id]
      |> map (ns |>)
      |> apply break-list
      |> zip-with $, [id, (|>) >> map _, [(head >> ( - 1)), tail]]
      |> flatten
    )

