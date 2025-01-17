---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "ciphertrust_gwcse_endpoint Resource - terraform-provider-ciphertrust"
subcategory: ""
description: |-
  
---

# ciphertrust_gwcse_endpoint (Resource)

This resource establishes the connection between Google Client Side Encryption and CipherTrust Manager.

This resource is dependent on a [ciphertrust_gwcse_identity](https://registry.terraform.io/providers/ThalesGroup/ciphertrust/latest/docs/resources/ciphertrust_gwcse_identity) resource.


## Example Usage

```terraform
# Create a CSE identity
resource "ciphertrust_gwcse_identity" "cse_identity" {
  name   = "identity-name"
  open_id_configuration_url = "https://terraform-example.auth0.com/.well-known/openid-configuration"
}

resource "ciphertrust_gwcse_endpoint" "cse_endpoint" {
  name                    = "endpoint-name"
  cse_identity_id         = [ciphertrust_gwcse_identity.cse_identity.id]
  authentication_audience = ["authentication_audience"]
  endpoint_url_hostname   = "terraform.example.com"
  meta                    = "some information to store with endpoint"
}
```

<!-- schema generated by tfplugindocs -->
## Schema

### Required

- `authentication_audience` (Set of String) (Updateable) A list of supported audiences for the authentication JWT.
- `cse_identity_id` (Set of String) (Updateable) A list of CSE identity provider ID's.
- `endpoint_url_hostname` (String) Endpoint base URL hostname for KACLS endpoint.
- `name` (String) Unique name for the endpoint.

### Optional

- `enabled` (Boolean) True by default.
- `meta` (Map of String) (Updateable) A list of key:value pairs to store with the endpoint.

### Read-Only

- `endpoint_url` (String) (Updateable) Endpoint base URL hostname for KACLS endpoint.
- `id` (String) CipherTrust ID of the Google Workspace endpoint.
- `kek_id` (String) ID of the key encrypting key.
- `kek_name` (String) Name of the key encrypting key.
- `kek_version` (String) Version of the key encrypting key.
- `status` (String) Status of the endpoint.


