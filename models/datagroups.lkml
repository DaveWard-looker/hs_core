


datagroup: daily_refresh {
  sql_trigger: select current_date() ;;
  max_cache_age: "24 hours"
}

datagroup: order_items_refresh {
  sql_trigger: select count(*) from `daveward-ps-dev.ecomm.order_items` ;;
  max_cache_age: "24 hours"
}
