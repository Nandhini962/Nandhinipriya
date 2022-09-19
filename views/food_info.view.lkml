# The name of this view in Looker is "Food Info"
view: food_info {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `Nandhini_Sample.Food Info`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Calories" in Explore.

  dimension: calories {
    type: number
    sql: ${TABLE}.Calories ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_calories {
    type: sum
    sql: ${calories} ;;
  }

  measure: average_calories {
    type: average
    sql: ${calories} ;;
  }

  dimension: carbs {
    type: number
    sql: ${TABLE}.Carbs ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.Category ;;
  }

  dimension: fat {
    type: number
    sql: ${TABLE}.Fat ;;
  }

  dimension: fibre {
    type: number
    sql: ${TABLE}.Fibre ;;
  }

  dimension: food_item {
    type: string
    sql: ${TABLE}.Food_Item ;;
  }

  dimension: measure {
    type: string
    sql: ${TABLE}.Measure ;;
  }

  dimension: note__protein__fat__carbs__fibre__are_measured_in_grams {
    type: string
    sql: ${TABLE}.Note__Protein__Fat__Carbs__Fibre__are_measured_in_grams ;;
  }

  dimension: protein {
    type: number
    sql: ${TABLE}.Protein ;;
  }

  dimension: string_field_8 {
    type: string
    sql: ${TABLE}.string_field_8 ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
