# Schedule Rotation of Google Cloud Keys using a HSM-Luna as the Key Source

This example shows how to:
- Create a connection to Google Cloud
- Configure a scheduled rotation job for Google Cloud keys using a DSM as the key source
- Create a Google Cloud key that will be rotated by the scheduler

The following steps explain how to:
- Configure CipherTrust Manager Provider parameters required to run the examples
- Configure Google Cloud parameters required to create Google Cloud keys
- Configure HSM-Luna parameters required to create HSM-Luna keys
- Run the example

## Configure CipherTrust Manager

### Use environment variables

```bash
export CM_ADDRESS=https://cm-address
export CM_USERNAME=cm-username
export CM_PASSWORD=cm-password
export CM_DOMAIN=cm-domain
```
### Use a configuration file

Create a ~/.ciphertrust/config file and configure these keys with your values.

```bash
address = https://cm-address
username = cm-username
password = cm-password
domain = cm-domain
```

### Edit the provider block in main.tf

```bash
provider "ciphertrust" {
  address  = "https://cm-address"
  username = "cm-username"
  password = "cm-password"
  domain   = "cm-domain"
}
```

## Configure Google Cloud Credentials and Keyrings

### Configure for all Google Cloud examples

Update values in scripts/gcp_vars.sh and run the script.

This updates all gcp_vars.tf files found in the subdirectories.

### Configure for this example only

Edit gcp_vars.tf in this directory and update with your values.

## Configure HSM-Luna Credentials and Partitions

### Configure for all HSM-Luna examples

Update values in scripts/hsm_vars.sh and run the script.

This updates all hsm_vars.tf files found in the subdirectories.

### Configure for this example only

Edit hsm_vars.tf in this directory and update with your values.

## Run the Example

```bash
terraform init
terraform apply
```

## Destroy Resources

Resources must be destroyed before another sample script using the same cloud is run.

```bash
terraform destroy
```
Run this step even if the apply step fails.
