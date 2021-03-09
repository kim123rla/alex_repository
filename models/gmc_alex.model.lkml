connection: "test-looker"

# include all the views
include: "/views/**/*.view"

datagroup: gmc_alex_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: gmc_alex_default_datagroup

explore: ga_sessions {
    view_label: "Ga Sessions: Average_Visit!"
  }
