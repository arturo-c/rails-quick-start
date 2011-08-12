name "radiant_database_master"
description "Database master for the radiant application."
run_list(
  "recipe[mysql::client]",
  "recipe[database::master]"
)
