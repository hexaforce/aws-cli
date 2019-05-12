#bin/sh -xe

git clone https://github.com/hexaforce/aws-init.git
sh aws-init/dynamodb.sh
sh aws-init/rds.sh
sh aws-init/s3.sh
sh aws-init/sqs.sh
