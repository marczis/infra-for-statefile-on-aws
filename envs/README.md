# Directory for your variable jsons of the environments

**Make sure you don't commit secrets into git**

## Example:

    {
        "bucket_name" : "<YOUR BUCKET NAME HERE>",
        "dynamo_name" : "tf-lock",
        "tf_role"     : "tf-state",
        "accounts"    : ["<ACCOUNT NUMBER 1>", "<ACCOUNT NUMBER 2>" ...]
    }

Where:
|||
|-|-|
| bucket_name | Desired name for the S3 bucket where you will keep the statefile(s) |
| dynamo_name | Desired name for the dynamo table - used for "locking" |
| tf_role     | Desired name for the role, which will be used for accessing the statefile(s) |
| accounts    | List of account numbers which will have permission to assume the tf_role |

