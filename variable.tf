# variable "mypolicyname" {
#   type = any
#   default = "defaultpolicy"
# }


# variable "alert_policy_names" {
#   type    = list(string)
#   default = ["PolicyA", "PolicyB", "PolicyC"]
# }

# resource "newrelic_alert_policy" "example" {
#   count = length(var.alert_policy_names)
#   name  = var.alert_policy_names[count.index]
# }


# variable "alert_policies" {
#   type = map(object({
#     name = string
#     incident_preference = string
#   }))
#   default = {
#     "PolicyA" = { name = "PolicyA", incident_preference = "PER_POLICY" }
#     "PolicyB" = { name = "PolicyB", incident_preference = "PER_CONDITION" }
#     "PolicyC" = { name = "PolicyC", incident_preference = "PER_CONDITION" }
#   }
# }

# resource "newrelic_alert_policy" "example" {
#   for_each = var.alert_policies

#   name               = each.value.name
#   incident_preference = each.value.incident_preference
# }