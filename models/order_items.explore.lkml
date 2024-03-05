
include: "/views/order_items.view.lkml"
include: "/views/inventory_items.view.lkml"

explore: order_items {
  join: inventory_items {
    sql_on: ${order_items.inventory_item_id} = ${inventory_items.id} ;;
    relationship: many_to_one
  }
}
