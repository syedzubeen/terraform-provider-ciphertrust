---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "ciphertrust_user Resource - terraform-provider-ciphertrust"
subcategory: ""
description: |-
  
---

# ciphertrust_user (Resource)

Users are unique individuals or systems using the API.

## Example Usage

```terraform
resource "ciphertrust_user" "user_admin1" {
  username = "secure_admin"
  password = "Test123#"
  email = "test@test.com"
  name = "Mr. Test"
  is_domain_user = false
  prevent_ui_login = true
  password_change_required = true
  user_metadata = {
    "abc" = "123"
    "def" = "456"
  }
}
```

<!-- schema generated by tfplugindocs -->
## Schema

### Required

- `password` (String) The user password.
- `username` (String) The user name.

### Optional

- `email` (String) E-mail of the user.
- `is_domain_user` (Boolean) This flag can be used to create the user in a non-root domain where user management is allowed.
- `name` (String) Full name of the user.
- `password_change_required` (Boolean) Password change required flag. If set to true, user will be required to change their password on next successful login.
- `prevent_ui_login` (Boolean) If true, user is not allowed to login from Web UI. Default - false
- `user_metadata` (Map of String) User meta data

### Read-Only

- `id` (String) The ID of this resource.


