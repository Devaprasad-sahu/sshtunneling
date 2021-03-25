# get public IPs of all the instances 
aws ec2 describe-instances \
  --filters Name=instance-state-name,Values=running \
  --query 'Reservations[].Instances[].[PublicIpAddress, Tags[?Key==`Name`].Value | [0] ]' \
  --output text | sort -k2