connection: "nandhini_test_data"

# include all the views

include: "/views/**/*.view" # include all the views
include: "/dashboards/*.dashboard.lookml"
datagroup: nandhini_food_sales_report_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: nandhini_food_sales_report_default_datagroup

explore: food_info {}

explore: food_data {}

explore: food_products {}

view: food_store {
  derived_table: {
    sql: select "1" as Id, "Sweets" as Items , "230" as Cost , "Chennai" as state , "Sold" as foodstatus union all
           select "2" as Id, "Snacks" as Items , "110" as Cost , "Coimbatore" as state,"Stock" as foodstatus union all
           select "3" as Id, "Choclates" as Items , "330" as Cost , "Ooty" as state , "Sold" as foodstatus union all
           select "4" as Id, "Biscuits" as Items , "550" as Cost , "Trichy" as state , "Stock" as foodstatus union all
           select "5" as Id, "Icecream" as Items , "100" as Cost , "Hydrabad" as state ,"Sold" as foodstatus union all
           select "6" as Id, "Drinks" as Items , "300" as Cost , "Chennai" as state,"Stock" as foodstatus union all
           select "7" as Id, "Bread" as Items , "120" as Cost , "Delhi" as state ,"Sold" as foodstatus union all
           select "8" as Id, "Rice" as Items , "550" as Cost , "Coimbatore" as state , "Stock" as foodstatus union all
           select "9" as Id, "Waffles" as Items , "300" as Cost , "Chennai" as state , "Sold" as foodstatus union all
           select "10" as Id, "Chips" as Items , "100" as Cost , "Pondichery" as state , "Stock" as foodstatus  ;;
  }

dimension: Id {
  primary_key: yes
  type: string
  sql: ${TABLE}.Id ;;
}

dimension: Items {
  type: string
  sql: ${TABLE}.Items ;;
}
dimension: state {
  type: string
  sql: ${TABLE}.state ;;
}

dimension: Cost {
  type: number
  value_format_name: usd_0
  sql: ${TABLE}.Cost ;;
}
  dimension: foodavailability {
    type: yesno
    sql: ${TABLE}.foodstatus= 'Stock' ;;
  }

  measure: totalcost {
    type: number
    value_format_name: usd
    sql: ${TABLE}.Cost ;;
  }

 measure: avergecost {
    type: string
  value_format_name: usd
    sql: ${TABLE}.Cost ;;
  }

  measure: count {
    type: count
  }

  }

view:vegetables {
  derived_table: {
    sql: select "1" as Id, "Tomato" as Vegetable_name,100 as Vegcost ,"1" as Quantity , "Sold" as status union all
          select "2" as Id, "Carrot" as Vegetable_name,120 as Vegcost ,"4" as Quantity , "stock" as status union all
          select "3" as Id, "Beetroot" as Vegetable_name,50 as Vegcost ,"5" as Quantity , "Sold" as status union all
          select "4" as Id, "Cauliflower" as Vegetable_name,200 as Vegcost ,"4" as Quantity , "stock" as status union all
          select "5" as Id, "Brinjal" as Vegetable_name,120 as Vegcost ,"3" as Quantity , "stock" as status union all
          select "6" as Id, "Potato" as Vegetable_name,30 as Vegcost ,"2" as Quantity , "stock" as status union all
          select "8" as Id, "Beans" as Vegetable_name,100 as Vegcost ,"3" as Quantity , "stock" as status union all
          select "9" as Id, "Ginger" as Vegetable_name,30 as Vegcost ,"4" as Quantity , "stock" as status union all
          select "10" as Id, "Cabbage" as Vegetable_name,40 as Vegcost ,"2" as Quantity , "stock" as status ;;
  }
  dimension: Id {
    type: string
    sql: ${TABLE}.Id ;;
  }

dimension: Vegetablename {
  type: string
  drill_fields: [vegtablecost,vegetablequantity]
  sql: ${TABLE}.Vegetable_name ;;
}
dimension: vegtablecost {
  type: number
  sql: ${TABLE}.Vegcost ;;
}
dimension: vegetablequantity {
  type: number
  sql: ${TABLE}.Quantity ;;

}
  dimension: costrange {
    type: bin
    bins: [0, 10, 20, 30, 40, 50, 60, 70, 80, 90 ,100]
    style: integer
    sql: ${TABLE}.vegcost ;;
  }
  dimension: orderavailability {
    type: yesno
    sql: ${TABLE}.status= 'stock' ;;
  }
  drill_fields: [detail*]

  set: detail {
    fields: [Vegetablename, vegetablequantity,vegtablecost]
  }



}

explore: groceries {
  view_name: vegetables
  join: food_store {
    sql_on: ${food_store.Id} = ${vegetables.Id} ;;
    type: left_outer
    relationship: many_to_one
  }
}
