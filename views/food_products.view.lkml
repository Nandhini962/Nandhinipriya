# The name of this view in Looker is "Food Products"
view: food_products {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `Nandhini_Sample.Food Products`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Category" in Explore.

  dimension: category {
    type: string
    sql: ${TABLE}.Category ;;
  }

  dimension: gross_sales {
    type: number
    sql: ${TABLE}.Gross_sales ;;
  }

  dimension: item_disc {
    type: number
    sql: ${TABLE}.Item_Disc ;;
  }

  dimension: item_id {
    type: number
    sql: ${TABLE}.Item_Id ;;
  }

  dimension: menu_item {
    type: string
    sql: ${TABLE}.Menu_item ;;
  }

  dimension: net_sales {
    type: number
    sql: ${TABLE}.Net_Sales ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.Price ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_price {
    type: sum
    sql: ${price} ;;
  }

  measure: average_price {
    type: average
    sql: ${price} ;;
  }

  dimension: sales_qty {
    type: number
    sql: ${TABLE}.Sales_Qty ;;
  }

  dimension: store_name {
    type: string
    sql: ${TABLE}.Store_Name ;;
  }

  measure: count {
    type: count
    drill_fields: [store_name]
  }
}
