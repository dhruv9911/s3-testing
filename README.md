CloudFormation Code for Create AWS Organization with AWS CodeBuild.

AWS Command for Create CodeBuild, CodePipeline, S3 Bucket and IAM roles for Note: Use YML file which is inside pipeline folder file name cloudformation.yml for create CodeBuild, CodePipeline, IAM roles from Cliudformation Code-

Use Command:




aws cloudformation create-stack   --stack-name MyCICDPipeline11   --template-body file://template.yml   --parameters       ParameterKey=GitHubRepoOwner,ParameterValue=dhruv9911       ParameterKey=GitHubRepoName,ParameterValue=s3-testing       ParameterKey=GitHubBranchName,ParameterValue=main       ParameterKey=GitHubOAuthToken,ParameterValue=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       ParameterKey=ArtifactBucketName,ParameterValue=aws-organization-creation-cloudformation-code-bucket       ParameterKey=CloudFormationStackName,ParameterValue=MyCloudFormationStack   --capabilities CAPABILITY_NAMED_IAM




aws cloudformation create-stack \
  --stack-name MyCICDPipeline11 \
  --template-body file://template.yml \
  --parameters \
      ParameterKey=GitHubRepoOwner,ParameterValue=dhruv9911 \
      ParameterKey=GitHubRepoName,ParameterValue=s3-testing \
      ParameterKey=GitHubBranchName,ParameterValue=main \
      ParameterKey=GitHubOAuthToken,ParameterValue=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 \
      ParameterKey=ArtifactBucketName,ParameterValue=aws-organization-creation-cloudformation-code-bucket \
      ParameterKey=CloudFormationStackName,ParameterValue=MyCloudFormationStack \
  --capabilities CAPABILITY_NAMED_IAM
