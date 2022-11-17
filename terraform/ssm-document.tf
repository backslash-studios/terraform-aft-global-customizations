data "aws_caller_identity" "current" {}

resource "aws_ssm_document" "SessionManagerRunShell_eu_west_1" {
  name            = "SSM-SessionManagerRunShell"
  document_format = "JSON"
  document_type   = "Session"

  content = <<DOC
    {
    "description": "Document to hold regional settings for Session Manager",
    "sessionType": "Standard_Stream",
    "schemaVersion": "1.0",
    "inputs": {
        "cloudWatchEncryptionEnabled": false,
        "s3EncryptionEnabled": true,
        "runAsDefaultUser": "",
        "s3BucketName": "aws-ssm-session-manager-logs-161899980366-eu-west-1",
        "cloudWatchStreamingEnabled": false,
        "kmsKeyId": "",
        "runAsEnabled": false,
        "idleSessionTimeout": "15",
        "s3KeyPrefix": "${data.aws_caller_identity.current.account_id}/eu-west-1/",
        "shellProfile": {
        "linux": "",
        "windows": ""
        },
        "cloudWatchLogGroupName": ""
    }
    }
DOC
}

resource "aws_ssm_document" "SessionManagerRunShell_us_east_1" {
  name            = "SSM-SessionManagerRunShell"
  document_format = "JSON"
  document_type   = "Session"

  content = <<DOC
    {
    "description": "Document to hold regional settings for Session Manager",
    "sessionType": "Standard_Stream",
    "schemaVersion": "1.0",
    "inputs": {
        "cloudWatchEncryptionEnabled": false,
        "s3EncryptionEnabled": true,
        "runAsDefaultUser": "",
        "s3BucketName": "aws-ssm-session-manager-logs-161899980366-eu-west-1",
        "cloudWatchStreamingEnabled": false,
        "kmsKeyId": "",
        "runAsEnabled": false,
        "idleSessionTimeout": "15",
        "s3KeyPrefix": "${data.aws_caller_identity.current.account_id}/us-east-1/",
        "shellProfile": {
        "linux": "",
        "windows": ""
        },
        "cloudWatchLogGroupName": ""
    }
    }
DOC
}
