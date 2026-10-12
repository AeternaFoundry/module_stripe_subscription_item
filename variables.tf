variable "subscription_items" {
  description = <<EOT
Map of subscription_items, attributes below
Required:
    - subscription
Optional:
    - billing_thresholds
    - discounts
    - metadata
    - payment_behavior
    - plan
    - price
    - price_data
    - proration_behavior
    - proration_date
    - quantity
    - tax_rates
EOT

  type = map(object({
    subscription = string
    billing_thresholds = optional(object({
      usage_gte = number
    }))
    discounts = optional(list(object({
      coupon         = optional(string)
      discount       = optional(string)
      promotion_code = optional(string)
    })))
    metadata         = optional(map(string))
    payment_behavior = optional(string)
    plan             = optional(string)
    price            = optional(string)
    price_data = optional(object({
      currency = string
      product  = string
      recurring = object({
        interval       = string
        interval_count = optional(number)
      })
      tax_behavior        = optional(string)
      unit_amount         = optional(number)
      unit_amount_decimal = optional(number)
    }))
    proration_behavior = optional(string)
    proration_date     = optional(number)
    quantity           = optional(number)
    tax_rates          = optional(list(string))
  }))
}

