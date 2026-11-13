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
  validation {
    condition = alltrue([
      for k, v in var.subscription_items : (
        v.payment_behavior == null || (contains(["allow_incomplete", "default_incomplete", "error_if_incomplete", "pending_if_incomplete"], v.payment_behavior))
      )
    ])
    error_message = "must be one of: \"allow_incomplete\", \"default_incomplete\", \"error_if_incomplete\", \"pending_if_incomplete\""
  }
  validation {
    condition = alltrue([
      for k, v in var.subscription_items : (
        v.proration_behavior == null || (contains(["always_invoice", "create_prorations", "none"], v.proration_behavior))
      )
    ])
    error_message = "must be one of: \"always_invoice\", \"create_prorations\", \"none\""
  }
}

