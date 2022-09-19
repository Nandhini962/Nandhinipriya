# Define the database connection to be used for this model.
connection: "looker_capability"

# include all the views
include: "/views/**/*.view"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: looker_capability_2022_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: looker_capability_2022_default_datagroup


explore: returned_superstore {}

explore: superstore {
join: returned_superstore {
  type: left_outer
  sql_on: ${returned_superstore.Order ID}= ${superstore.Order ID} ;;
  relationship: many_to_many
}
}
