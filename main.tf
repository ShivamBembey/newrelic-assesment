# resource "newrelic_alert_policy" "foo" {
#   name = "TRAINING-OCTOBER"
#   incident_preference = "PER_POLICY"
# }

#Creating resource using count loop
# resource "newrelic_alert_policy" "foo" {
#     count = 5
#   name = "TRAINING-OCTOBER-${count.index}"
# }

# output "policy-id" {
# #   value = newrelic_alert_policy.foo.id
#   value = ["${newrelic_alert_policy.foo.*.id}"]
# }


#Creating resource using for-each loop
variable "alert_policy_count" {
  type    = number
  default = 5
}

resource "newrelic_alert_policy" "foo" {
  for_each = { for i in range(var.alert_policy_count) : i => tostring(i) }
  name    = "TRAINING-OCTOBER-${each.key}"
}

output "policy-id" {
  value = {
    for key, policy in newrelic_alert_policy.foo :
    key => policy.id
  }
}

