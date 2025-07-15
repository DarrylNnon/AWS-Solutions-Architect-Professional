# Study Notes

AWS S3 Bash Scripting Lab Notes

# Overview
This lab focuses on using Bash scripts to interact with AWS S3 programmatically. We'll cover creating, listing, deleting buckets and objects, and syncing files using the AWS CLI and Bash scripting.

# Prequisites

```sh
AWS CLI installed and configured
GitPod or similar environment with Bash support
JQ installed (sudo apt-get install jq)
Basic understanding of Bash scripting
```

# Steps

# Step 1: Set Up Environment

I have read this.

- https://github.com/ExamProCo/AWS-Examples/tree/main/s3/bash-scripts

- Create Directories

```sh
mkdir -p S3/bash-scripts
cd S3/bash-scripts
```

# Make Scripts Executable

```sh
chmod u+x *.sh
```

# Step 2: Create and Delete Buckets

- Create Bucket Script (create_bucket.sh)



# List Objects in Bucket

```sh
./list_objects.sh my-new-bucket
```


# Delete All Objects in Bucket

```sh
./delete_objects.sh my-new-bucket
```

# Delete the Bucket

```sh
./delete_bucket.sh my-new-bucket
```


# Conclusion

These scripts provide a structured approach to managing AWS S3 buckets and objects programmatically using Bash. Mastery of these scripting techniques is essential for cloud engineers and DevOps professionals.
