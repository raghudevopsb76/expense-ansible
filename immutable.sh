# Find the servers (Anisble Dynamic Inventory)

aws ec2 describe-instances --filters "Name=tag:Name,Values=${ENV}-${COMPONENT}" --query 'Reservations[*].Instances[*].PrivateIpAddress' --output text >inv

# Change the Parameter store having the app version.
aws ssm put-parameter --name "${ENV}.${COMPONENT}.app_version" --value "${APP_VERSION}" --type "String" --overwrite

aws autoscaling start-instance-refresh --auto-scaling-group-name ${ENV}-${COMPONENT} --preferences '{"InstanceWarmup": 60, "MinHealthyPercentage": 50}'