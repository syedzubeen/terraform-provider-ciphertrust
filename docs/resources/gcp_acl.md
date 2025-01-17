---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "ciphertrust_gcp_acl Resource - terraform-provider-ciphertrust"
subcategory: ""
description: |-
  
---

# ciphertrust_gcp_acl (Resource)

This resource is used to grant a set of permissions to a user or a group allowing them to perform only permitted actions on Google Cloud Key Ring. 

The following table lists the accepted values:

| Operation          | Actions Required | Description                                                        |
|:-------------------|:-----------------|:-------------------------------------------------------------------|
| Create             | keycreate        | Permission to create a Google Cloud Key.                           |
| Update             | keyupdate        | Permission to updates the key attributes, tags and key operations. |
| Enable key         | keyupdate        | Permission to enable the Google Cloud key.                         |
| Disable key        | keyupdate        | Permission to disable the Google Cloud key.                        |
| Schedule Destroy   | keydestroy       | Permission to schedule destroy Google Cloud key.                   |
| Upload             | keyupload        | Permission to upload the key to the Google Cloud Key Ring.         |
| All operations     | view             | Mandatory. Permission to view Google Cloud key rings and its keys. |
| **Synchronize      | keysynchronize   | Permission to synchronize Google Cloud keys.                       |
| **Cancel           | keysynchronize   | Permission to cancel the synchronization job.                      |
| **Cancel destroy   | keycanceldestroy | Permission to cancel destroy Google Cloud key.                     |

** Operations currently not supported by the provider.

The resource is dependent on a [ciphertrust_gcp_keyring](https://registry.terraform.io/providers/ThalesGroup/ciphertrust/latest/docs/resources/gcp_keyring) resource.

Access control is applied for either a [ciphertrust_user](https://registry.terraform.io/providers/ThalesGroup/ciphertrust/latest/docs/resources/user) or a [ciphertrust_group](https://registry.terraform.io/providers/ThalesGroup/ciphertrust/latest/docs/resources/group).

## Example Usage

```terraform
# This resource is dependent on a ciphertrust_gcp_connection resource
resource "ciphertrust_gcp_connection" "gcp_connection" {
  key_file = "gcp-key-file.json"
  name     = "connection-name"
}

# Create a keyring resource and assign it to the connection
resource "ciphertrust_gcp_keyring" "gcp_keyring" {
  gcp_connection = ciphertrust_gcp_connection.gcp_connection.name
  name           = "keyring-name"
  project_id     = "project-id"
}

# Create a user
resource "ciphertrust_user" "user" {
  username = "username"
  password = "password"
}

# Create another user which will be added to a group
resource "ciphertrust_user" "group_user" {
  username = "group_user"
  password = "password"
}

# Create a group and add the user
resource "ciphertrust_groups" "group" {
  name     = "group"
  user_ids = [ciphertrust_user.group_user.id]
}

# Users must be a member of the CCKM Users group to perform operations on cloud keys
resource "ciphertrust_groups" "cckm_users" {
  name = "CCKM Users"
  user_ids = [
    ciphertrust_user.user.id,
    ciphertrust_user.group_user.id,
  ]
}

# Users must be a member of the Key Users group to perform operations on CipherTrust keys
# For example, create a CipherTrust key to upload it
resource "ciphertrust_groups" "key_users" {
  name = "Key Users"
  user_ids = [
    ciphertrust_user.group_user.id,
  ]
}

# Add an acl for the user to the keyring
resource "ciphertrust_gcp_acl" "user_acls" {
  keyring_id = ciphertrust_gcp_keyring.gcp_keyring.id
  user_id     = ciphertrust_user.user.id
  actions     = ["keycreate", "keyupload", "view"]
}

# Add an acl for the group to the keyring
resource "ciphertrust_gcp_acl" "test_group_acls" {
  keyring_id = ciphertrust_gcp_keyring.gcp_keyring.id
  group       = ciphertrust_groups.group.id
  actions     = ["view", "keyupload", "keydestroy"]
}
```

<!-- schema generated by tfplugindocs -->
## Schema

### Required

- `actions` (Set of String) List of permitted actions. The "view" action must be included. Valid values: view, keycreate, keyupload, keyupdate, keydestroy, keysynchronize and keycanceldestroy.
- `keyring_id` (String) Terraform ID of the keyring the acl will be added to.

### Optional

- `group` (String) Ciphertrust group the acl applies to. Specify either "user_id" or "group".
- `user_id` (String) ID of the Ciphertrust user the acl applies to. Specify either "user_id" or "group".

### Read-Only

- `id` (String) Terraform resource identifier.
