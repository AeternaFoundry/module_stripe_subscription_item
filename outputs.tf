output "subscription_items_id" {
  description = "Map of id values across all subscription_items, keyed the same as var.subscription_items except keys with no id are omitted"
  value       = { for k, v in stripe_subscription_item.subscription_items : k => v.id if v.id != null && length(v.id) > 0 }
}
output "subscription_items_billed_until" {
  description = "Map of billed_until values across all subscription_items, keyed the same as var.subscription_items except keys with no billed_until are omitted"
  value       = { for k, v in stripe_subscription_item.subscription_items : k => v.billed_until if v.billed_until != null }
}
output "subscription_items_billing_thresholds" {
  description = "Map of billing_thresholds values across all subscription_items, keyed the same as var.subscription_items except keys with no billing_thresholds are omitted"
  value       = { for k, v in stripe_subscription_item.subscription_items : k => v.billing_thresholds if v.billing_thresholds != null && length(v.billing_thresholds) > 0 }
}
output "subscription_items_created" {
  description = "Map of created values across all subscription_items, keyed the same as var.subscription_items except keys with no created are omitted"
  value       = { for k, v in stripe_subscription_item.subscription_items : k => v.created if v.created != null }
}
output "subscription_items_current_period_end" {
  description = "Map of current_period_end values across all subscription_items, keyed the same as var.subscription_items except keys with no current_period_end are omitted"
  value       = { for k, v in stripe_subscription_item.subscription_items : k => v.current_period_end if v.current_period_end != null }
}
output "subscription_items_current_period_start" {
  description = "Map of current_period_start values across all subscription_items, keyed the same as var.subscription_items except keys with no current_period_start are omitted"
  value       = { for k, v in stripe_subscription_item.subscription_items : k => v.current_period_start if v.current_period_start != null }
}
output "subscription_items_discounts" {
  description = "Map of discounts values across all subscription_items, keyed the same as var.subscription_items except keys with no discounts are omitted"
  value       = { for k, v in stripe_subscription_item.subscription_items : k => v.discounts if v.discounts != null && length(v.discounts) > 0 }
}
output "subscription_items_metadata" {
  description = "Map of metadata values across all subscription_items, keyed the same as var.subscription_items except keys with no metadata are omitted"
  value       = { for k, v in stripe_subscription_item.subscription_items : k => v.metadata if v.metadata != null && length(v.metadata) > 0 }
}
output "subscription_items_object" {
  description = "Map of object values across all subscription_items, keyed the same as var.subscription_items except keys with no object are omitted"
  value       = { for k, v in stripe_subscription_item.subscription_items : k => v.object if v.object != null && length(v.object) > 0 }
}
output "subscription_items_plan" {
  description = "Map of plan values across all subscription_items, keyed the same as var.subscription_items except keys with no plan are omitted"
  value       = { for k, v in stripe_subscription_item.subscription_items : k => v.plan if v.plan != null && length(v.plan) > 0 }
}
output "subscription_items_price" {
  description = "Map of price values across all subscription_items, keyed the same as var.subscription_items except keys with no price are omitted"
  value       = { for k, v in stripe_subscription_item.subscription_items : k => v.price if v.price != null && length(v.price) > 0 }
}
output "subscription_items_quantity" {
  description = "Map of quantity values across all subscription_items, keyed the same as var.subscription_items except keys with no quantity are omitted"
  value       = { for k, v in stripe_subscription_item.subscription_items : k => v.quantity if v.quantity != null }
}
output "subscription_items_subscription" {
  description = "Map of subscription values across all subscription_items, keyed the same as var.subscription_items except keys with no subscription are omitted"
  value       = { for k, v in stripe_subscription_item.subscription_items : k => v.subscription if v.subscription != null && length(v.subscription) > 0 }
}
output "subscription_items_tax_rates" {
  description = "Map of tax_rates values across all subscription_items, keyed the same as var.subscription_items except keys with no tax_rates are omitted"
  value       = { for k, v in stripe_subscription_item.subscription_items : k => v.tax_rates if v.tax_rates != null && length(v.tax_rates) > 0 }
}

