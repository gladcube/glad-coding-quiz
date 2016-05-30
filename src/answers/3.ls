{$} = require \glad-functions

module.exports = (->
  [1 to 30]
  |> filter rem >> (map _, [3, 5, 7, 11]) >> any (is 0)

  # Another
  [1 to 30]
  |> filter rem >> (`map` [3, 5, 7, 11]) >> any (is 0)

  # Another
  [1 to 30]
  |> filter rem >> (>> (is 0)) >> any _, [3, 5, 7, 11]
) >> console~log

