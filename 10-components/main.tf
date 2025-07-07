module "component" {
    for_each = var.component
    source = "git::https://github.com/KodukG01/terraform-aws-roboshop.git?ref=main"
    component = each.key
    rule_priority = each.key.rule_priority
}