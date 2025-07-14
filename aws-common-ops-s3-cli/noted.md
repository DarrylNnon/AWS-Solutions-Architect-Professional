# AWS S3 CLI Common Operations - Lab Notes

Introduction
In this lab, we will go through common operations in AWS S3 using the AWS CLI. The focus will be on programmatically interacting with S3 buckets and objects using the AWS CLI instead of relying on the AWS Management Console (ClickOps). This guide covers creating, listing, uploading, downloading, and deleting buckets and objects.

# Prerequisites

- AWS CLI installed and configured with appropriate permissions.
- Basic knowledge of AWS S3 concepts.

# Step 1: Setting Up AWS CLI Environment

```sh
Open CloudShell or Terminal
aws configure
```

# Enable Auto Prompt (Optional)

```sh
export AWS_CLI_AUTO_PROMPT=on-partial
```

# Step 2: Creating an S3 Bucket

```sh
Create a Bucket
aws s3api create-bucket --bucket my-example-bucket-ab --region us-east-1
```

# Step 3: Listing Buckets

```sh
List All Buckets
aws s3api list-buckets --query "Buckets[].Name"
```

# Step 4: Uploading Objects

Upload a Single Object

```sh
aws s3 cp path/to/local/file.txt s3://my-example-bucket-fd/
```

Upload Multiple Objects Using Sync

```sh
aws s3 sync path/to/local/directory/ s3://my-example-bucket-fd/
```

# Step 5: Downloading Objects

Download a Single Object

```sh
aws s3 cp s3://my-example-bucket-ab/file.txt path/to/local/directory/
```

# Download Multiple Objects Using Sync

```sh
aws s3 sync s3://my-example-bucket-ab/ path/to/local/directory/
```

# Step 6: Listing Objects

```sh
aws s3api list-objects --bucket my-example-bucket-fd --query "Contents[].Key"
```

# tips
TIP: Exclude Folder Names from Results
When listing objects, folder names end with a /. You can exclude these from the results by applying a JMESPath query. The command to achieve this is as follows:

```sh
aws s3api list-objects --bucket my-example-bucket-fd --query 'Contents[?(!ends_with(Key, `/`))].Key'
```

# Step 7: Deleting Objects

Delete a Single Object

```sh
aws s3 rm s3://my-example-bucket-fd/file.txt
```

Delete All Objects in a Bucket Recursively

```sh
aws s3 rm s3://my-example-bucket-fd/ --recursive
```

# Step 8: Deleting Buckets

Delete an Empty Bucket

```sh
aws s3api delete-bucket --bucket my-example-bucket-fd
```

# Step 9: Advanced Operations

Get Object Metadata

```sh
aws s3api head-object --bucket my-example-bucket-fd --key file.txt
```

# Enable Versioning on a Bucket

```sh
aws s3api put-bucket-versioning --bucket my-example-bucket-fd --versioning-configuration Status=Enabled
```

# Conclusion

These operations cover the basic yet essential functionalities you will need when working with AWS S3 using the AWS CLI. Practice these commands to become more comfortable with managing S3 programmatically. For more advanced operations and details, refer to the [AWS CLI Command Reference.](https://docs.aws.amazon.com/cli/latest/reference/s3/)