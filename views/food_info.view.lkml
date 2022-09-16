view: food_info {
  sql_table_name: `Nandhini_Sample.Food Info`
    ;;

  dimension: calories {
    type: number
    sql: ${TABLE}.Calories ;;
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
