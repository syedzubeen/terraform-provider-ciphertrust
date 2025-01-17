---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "ciphertrust_aws_connection Resource - terraform-provider-ciphertrust"
subcategory: ""
description: |-
  
---

# ciphertrust_aws_connection (Resource)

This resource creates a connection between CipherTrust Manager and an AWS cloud.

A connection is required before operations can be performed on the AWS cloud.

[ciphertrust_aws_kms](https://registry.terraform.io/providers/ThalesGroup/ciphertrust/latest/docs/resources/aws_kms) resources are dependent on this resource.

## Optional Use of Environment Variables 

| Parameter          | Environment Variable  |
|--------------------|-----------------------|
| access_key_id      | AWS_ACCESS_KEY_ID     |
| secret_access_key  | AWS_SECRET_ACCESS_KEY |


## Example Usage

```terraform
# Create an AWS connection without using environment variables
resource "ciphertrust_aws_connection" "aws_connection" {
  name              = "connection-name"
  access_key_id     = "access-key-id"
  secret_access_key = "secret-access-key"
}

# Create an AWS connection using the AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY environment variables
resource "ciphertrust_azure_connection" "azure_connection" {
  name = "connection-name"
}

# Create a ciphertrust_aws_kms resource and assign it to the connection
resource "ciphertrust_aws_kms" "kms" {
  account_id     = "aws-account-id"
  aws_connection = ciphertrust_aws_connection.aws_connection.id
  name           = "kms-name"
  regions        = ["aws-region", "aws-region"]
}

# Create an AWS key
resource "ciphertrust_aws_key" "aws_key" {
  kms    = ciphertrust_aws_kms.kms.id
  region = "aws-region"
}
```

<!-- schema generated by tfplugindocs -->
## Schema

### Required

- `name` (String) Unique connection name.

### Optional

- `access_key_id` (String) (Updateable) AWS Key ID of the AWS user. Default is the AWS_ACCESS_KEY_ID environment variable.
- `assume_role_arn` (String) (Updateable) AWS IAM role ARN.
- `assume_role_external_id` (String) (Updateable) AWS role external ID.
- `cloud_name` (String) (Updateable) Name of the cloud. Options: aws, aws-us-gov and aws-cn. Default is aws.
- `description` (String) (Updateable) Description of the AWS connection.
- `meta` (Map of String) (Updateable) A list of key:value pairs to store with the connection.
- `secret_access_key` (String, Sensitive) (Updateable) Secret associated with the access key of the AWS user. Default is the AWS_SECRET_ACCESS_KEY environment variable.

### Read-Only

- `id` (String) CipherTrust AWS connection ID.
