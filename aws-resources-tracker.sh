#!/bin/bash

###################################################################
#                                                                 #
# Author : Indrajeet Bhujbal                                      #
#                                                                 #
# Date : 3/2/2024                                                 #
#                                                                 #
# Purpose : This Script provide report of  aws resource usage     #
#                                                                 #
###################################################################

set -x # debug mode

set -e

set -o pipefail

# to get Ec2 instances usage 

echo "Usage of EC2 instances"

aws ec2 describe-instances | jq .'Reservation[].Instances[].InstancesId'

# to list S3 bucket usage

echo "list of S3 buckets "

aws s3 ls

# to get info about aws lambda functions

echo "list of aws lambda functions"

aws lambda list-functions --query 'Functions[].FunctionName'

#to get list of IAM users 

echo "List of IAM useres"

aws iam list-users --query 'Users[].UserName'


