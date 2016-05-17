{check_required_envs} = require \../services/envs-checker.ls
quiz_no = process.env.QUIZ_NO

module.exports = answer = ->
  <- check_required_envs <[QUIZ_NO]>
  do require "../answers/#quiz_no.ls"
