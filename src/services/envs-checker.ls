module.exports = new class EnvsChecker
  check_required_envs: (envs, cb)->
    envs
    |> each ->
      unless process.env.(it)? => throw "environment variable '#it' not defined"
    cb?!
  check_wanted_envs: (envs, cb)->
    envs
    |> each ->
      unless process.env.(it)? => console.warn "[Warning] environment variable '#it' not defined"
    cb?!

