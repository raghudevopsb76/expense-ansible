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

```json
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "VisualEditor0",
            "Effect": "Allow",
            "Action": [
                "s3:GetObjectRetention",
                "s3:DeleteObjectVersion",
                "s3:GetObjectVersionTagging",
                "s3:GetObjectAttributes",
                "s3:ListBucket",
                "s3:GetObjectVersionAttributes",
                "s3:PutObject",
                "s3:GetObjectAcl",
                "s3:GetObject",
                "s3:GetObjectVersionAcl",
                "s3:GetObjectTagging",
                "s3:DeleteObject",
                "s3:GetObjectVersion"
            ],
            "Resource": [
                "arn:aws:s3:::d76-prometheus-alert-rules/*",
                "arn:aws:s3:::d76-prometheus-alert-rules"
            ]
        }
    ]
}
```