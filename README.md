# Terraform: Email Notifications of unencrypted S3 Buckets

This Terraform repository would provide a lambda which will scan S3 Buckets and add AES256 encryption (if missing). This lambda requires access to SSM Parameter.

## Overview

![Image](lambda-s3encryption.png?raw=true)

## Installation

This is controlled and deployed by Terraform, just indicate the source module in the root of this repository. This module requires access to the following SSM parameter (StringList):
- `s3-encryption-exception-list`

If this exception list is missing, this lambda would stop running prematurely

Indicate the list of recipient's email address in your SSM parameter (StringList):
- `default-destination-emails`

Indicate the sender email address in your SSM parameter:
- `default-source-email`

## Usage

As an example, lets deploy this Lambda in main AWS account.

```hcl
module "s3-encryption-lambda" {
  source = "./modules/s3-scan-encryption"

  filename = "s3-encryption-payload.zip"
}
```

## Tests

`s3_automated_encryption.py` is being tested by `pylint` and `pytest`. If you do any changes, Please run the following commands:
- `pytest .`
- `pylint s3_automated_encryption.py`

## Deployment

As explained previously, this lambda is deployed by Terraform. All lambdas of this repository are tested and packaged by the script:
```bash
cd modules
./python_packages.sh
```

Run then the following:

- `terraform init`

Finally, deploy as follow:

- `terraform apply`
