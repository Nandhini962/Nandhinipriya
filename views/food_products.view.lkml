view: food_products {
  sql_table_name: `Nandhini_Sample.Food Products`
    ;;

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
