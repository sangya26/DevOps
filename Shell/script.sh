#!/bin/bash

#################
# Author: Sangya
# Date: 16th June
# Version: v1
# This script will report AWS resource usage
###################

set -x

# CRON INTEGRATION: Add cronjob if not already added
CRON_CMD="@daily /absolute/path/to/aws_resource_tracker.sh >> /absolute/path/to/logs/cron_output.log 2>&1"
(crontab -l 2>/dev/null | grep -F "$CRON_CMD") >/dev/null

if [ $? -ne 0 ]; then
    echo "Adding cron job..."
    (crontab -l 2>/dev/null; echo "$CRON_CMD") | crontab -
else
    echo "Cron job already exists."
fi

# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users

# Set output log file with timestamp
OUTPUT="/absolute/path/to/logs/resourceTracker_$(date +%F_%T).log"

# list s3 buckets
echo "Print list of S3 bucket" >> "$OUTPUT"
aws s3 ls >> "$OUTPUT"

# list EC2 instances
echo "Print list of EC2 instances" >> "$OUTPUT"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> "$OUTPUT"

# list lambda
echo "Print list of Lambda" >> "$OUTPUT"
aws lambda list-functions >> "$OUTPUT"

# list IAM users
echo "Print list of IAM user" >> "$OUTPUT"
aws iam list-users >> "$OUTPUT"

