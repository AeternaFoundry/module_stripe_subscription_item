resource "stripe_subscription_item" "subscription_items" {
  for_each = var.subscription_items

  subscription       = each.value.subscription
  billing_thresholds = each.value.billing_thresholds
  discounts          = each.value.discounts
  metadata           = each.value.metadata
  payment_behavior   = each.value.payment_behavior
  plan               = each.value.plan
  price              = each.value.price
  price_data         = each.value.price_data
  proration_behavior = each.value.proration_behavior
  proration_date     = each.value.proration_date
  quantity           = each.value.quantity
  tax_rates          = each.value.tax_rates
}

