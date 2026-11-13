output "subscription_items_id" {
  description = "Map of id values across all subscription_items, keyed the same as var.subscription_items"
  value       = { for k, v in stripe_subscription_item.subscription_items : k => v.id }
}
output "subscription_items_billed_until" {
  description = "Map of billed_until values across all subscription_items, keyed the same as var.subscription_items"
  value       = { for k, v in stripe_subscription_item.subscription_items : k => v.billed_until }
}
output "subscription_items_billing_thresholds" {
  description = "Map of billing_thresholds values across all subscription_items, keyed the same as var.subscription_items"
  value       = { for k, v in stripe_subscription_item.subscription_items : k => v.billing_thresholds }
}
output "subscription_items_created" {
  description = "Map of created values across all subscription_items, keyed the same as var.subscription_items"
  value       = { for k, v in stripe_subscription_item.subscription_items : k => v.created }
}
output "subscription_items_current_period_end" {
  description = "Map of current_period_end values across all subscription_items, keyed the same as var.subscription_items"
  value       = { for k, v in stripe_subscription_item.subscription_items : k => v.current_period_end }
}
output "subscription_items_current_period_start" {
  description = "Map of current_period_start values across all subscription_items, keyed the same as var.subscription_items"
  value       = { for k, v in stripe_subscription_item.subscription_items : k => v.current_period_start }
}
output "subscription_items_discounts" {
  description = "Map of discounts values across all subscription_items, keyed the same as var.subscription_items"
  value       = { for k, v in stripe_subscription_item.subscription_items : k => v.discounts }
}
output "subscription_items_metadata" {
  description = "Map of metadata values across all subscription_items, keyed the same as var.subscription_items"
  value       = { for k, v in stripe_subscription_item.subscription_items : k => v.metadata }
}
output "subscription_items_object" {
  description = "Map of object values across all subscription_items, keyed the same as var.subscription_items"
  value       = { for k, v in stripe_subscription_item.subscription_items : k => v.object }
}
output "subscription_items_plan" {
  description = "Map of plan values across all subscription_items, keyed the same as var.subscription_items"
  value       = { for k, v in stripe_subscription_item.subscription_items : k => v.plan }
}
output "subscription_items_price" {
  description = "Map of price values across all subscription_items, keyed the same as var.subscription_items"
  value       = { for k, v in stripe_subscription_item.subscription_items : k => v.price }
}
output "subscription_items_quantity" {
  description = "Map of quantity values across all subscription_items, keyed the same as var.subscription_items"
  value       = { for k, v in stripe_subscription_item.subscription_items : k => v.quantity }
}
output "subscription_items_subscription" {
  description = "Map of subscription values across all subscription_items, keyed the same as var.subscription_items"
  value       = { for k, v in stripe_subscription_item.subscription_items : k => v.subscription }
}
output "subscription_items_tax_rates" {
  description = "Map of tax_rates values across all subscription_items, keyed the same as var.subscription_items"
  value       = { for k, v in stripe_subscription_item.subscription_items : k => v.tax_rates }
}

