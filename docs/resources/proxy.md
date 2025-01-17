---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "ciphertrust_proxy Resource - terraform-provider-ciphertrust"
subcategory: ""
description: |-
  
---

# ciphertrust_proxy (Resource)

The proxy API is used to set the proxy in the system. The API also provides an option to input a CA certificate to trust by the system. A system restart is required after adding new or changing proxy settings.

## Example Usage

```terraform
resource "ciphertrust_proxy" "proxie" {
  http_proxy = "user01:test12345@10.171.18.190:8080"
  https_proxy = "user02:Test12345@10.171.18.190:8081"
  no_proxy = ["127.0.0.1", "localhost"]
}
```

<!-- schema generated by tfplugindocs -->
## Schema

### Optional

- `certificate` (String) CA certificate to trust for proxy.
- `http_proxy` (String) HTTP proxy URL for proxy configurations. If the proxy server password contains any special character replace it with encoded values.
- `https_proxy` (String) HTTPS proxy URL for proxy configurations. If the proxy server's password contains any special character replace it with encoded values.
- `no_proxy` (Set of String) List of hosts for a proxy exception.

### Read-Only

- `id` (String) The ID of this resource.


