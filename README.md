# raghudevopsb76/expense-ansible

```json

{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Principal": {
                "AWS": "arn:aws:iam::633788536644:role/frontend"
            },
            "Action": "s3:PutObject",
            "Resource": "arn:aws:s3:::d76-prometheus-alert-rules/*"
        }
    ]
}
```

