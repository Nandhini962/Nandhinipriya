view: superstore {

  sql_table_name: Nandhini_Sample.Superstore
    ;;

  dimension: category {
    type: string
    sql: ${TABLE}.Category ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension: customer_id {
    type: string
    sql: ${TABLE}.Customer_ID ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}.Customer_Name ;;
  }

  dimension: discount {
    type: number
    value_format: "0"
    sql: ${TABLE}.Discount ;;
  }


  dimension_group: order {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Order_Date ;;
  }

  dimension: order_id {
    type: string
    sql: ${TABLE}.Order_ID ;;
  }

  dimension: postal_code {
    type: number
    sql: ${TABLE}.Postal_Code ;;
  }

  dimension: product_id {
    type: string
    sql: ${TABLE}.Product_ID ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.Product_Name ;;
  }

  dimension: profit {
    type: number
    value_format: "0"
    sql: ${TABLE}.Profit ;;
  }

  dimension: Sales_Feedback {
    case: {
      when: {
        sql: ${sales} >= 1000;;
        label: "Excellent"
      }

      when: {
        sql: ${sales} > 500 AND ${sales} <= 999 ;;
        label: "Good"
      }

      when: {
        sql: ${sales} < 100 ;;
        label: "Low "
      }
      else:"Average"
    }
  }

  measure: total_profit {
    type: sum
    sql: ${profit} ;;
  }

  measure: average_profit {
    type: average
    sql: ${profit} ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.Quantity ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.Region ;;
  }

  dimension: row_id {
    type: number
    sql: ${TABLE}.Row_ID ;;
  }

  dimension: sales {
    type: number
    value_format: "0"
    sql: ${TABLE}.Sales ;;
  }

  dimension: segment {
    type: string
    sql: ${TABLE}.Segment ;;
  }

  dimension_group: ship {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Ship_Date ;;
  }
  dimension_group: Shipping_days{
    type: duration
    intervals: [day, month,week,quarter,year]
    sql_start: ${TABLE}.order_date ;;
    sql_end: ${TABLE}.ship_date ;;
  }

  dimension: ship_mode {
    type: string
    sql: ${TABLE}.Ship_Mode ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  dimension: sub_category {
    type: string
    sql: ${TABLE}.Sub_Category ;;
  }

  measure: count {
    type: count
    drill_fields: [customer_name, product_name]
  }

}
