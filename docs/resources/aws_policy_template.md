---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "ciphertrust_aws_policy_template Resource - terraform-provider-ciphertrust"
subcategory: ""
description: |-
  
---

# ciphertrust_aws_policy_template (Resource)

A ciphertrust_aws_policy_template can be used to add the key policy for [ciphertrust_aws_key](https://registry.terraform.io/providers/ThalesGroup/ciphertrust/latest/docs/resources/aws_key) resources.

If the policy json is provided no other fields can be specified.

## Example Usage

```terraform
# Create a policy template using key_admins and key_users
resource "ciphertrust_aws_policy_template" "policy_template" {
  key_admins = ["aws-iam-user", "aws-iam-role"]
  key_users  = ["aws-iam-user", "aws-iam-role"]
  km         = kms.id
}

# Create a policy template using a policy json
resource "ciphertrust_aws_policy_template" "policy_template" {
  km     = kms.id
  policy = <<-EOT
    {
    "Version": "2012-10-17",
    "Id": "kms-tf-1",
    "Statement": [{
      "Sid": "Enable IAM User Permissions 1",
      "Effect": "Allow",
      "Principal": {
        "AWS": "*"
      },
      "Action": "kms:*",
      "Resource": "*"
    }]
  }
  EOT
}

# Create an AWS connection
resource "ciphertrust_aws_connection" "aws_connection" {
  name = "aws_connection_name"
}

# Assign a ciphertrust_aws_kms resource to the connection
resource "ciphertrust_aws_kms" "kms" {
  account_id     = "account-id"
  aws_connection = ciphertrust_aws_connection.aws_connection.id
  name           = "kms-name"
  regions        = ["aws-region"]
}

# Create an AWS key and assign the key policy template to it
resource "ciphertrust_aws_key" "aws_key" {
  kms    = ciphertrust_aws_kms.kms.id
  region = "aws-region"
  policy {
    policy_template = ciphertrust_aws_policy_template.policy_template.id
  }
}
```

<!-- schema generated by tfplugindocs -->
## Schema

### Required

- `kms` (String) Name or ID of the KMS for the key policy.
- `name` (String) Name for the policy template.

### Optional

- `external_accounts` (Set of String) (Updateable) External AWS accounts.
- `key_admins` (Set of String) (Updateable) Key administrators - users.
- `key_admins_roles` (Set of String) (Updateable) Key administrators - roles.
- `key_users` (Set of String) (Updateable) Key users - users.
- `key_users_roles` (Set of String) (Updateable) Key users - roles.
- `policy` (String) (Updateable) AWS key policy json.

### Read-Only

- `id` (String) ID of the policy template.


