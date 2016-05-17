{check_required_envs} = require \./services/envs-checker.ls
task_name = process.env.TASK_NAME

do main = ->
  <- check_required_envs <[TASK_NAME]>
  do require "./tasks/#task_name.ls"

