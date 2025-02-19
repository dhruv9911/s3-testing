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



==========================================================================================================================================================================================================================================
User Input Save in CSV file and store in S3 Bucket then Execute Below AWS CLI Command for create AWS Codepipeline, CodeBuild, Lambda Function for fetching input for CSV file stored in S3 bucket and store thore Key/value in AWS Parameters Value.
Accordingly CloudformationStack Deploy for Create New Resource procurmnet in case We are using S3.yaml which is store in same repo.

Note: Download CSV file Name EXcelFile.csv in cloudshell then exceute below command for create all pipeline and its relate resources.


aws cloudformation create-stack \
  --stack-name MyCICDPipeline11 \
  --template-body file://ExcelFile.yml \
  --parameters \
      ParameterKey=GitHubRepoOwner,ParameterValue=dhruv9911 \
      ParameterKey=GitHubRepoName,ParameterValue=s3-testing \
      ParameterKey=GitHubBranchName,ParameterValue=main \
      ParameterKey=GitHubOAuthToken,ParameterValue=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 \
      ParameterKey=ArtifactBucketName,ParameterValue=aws-organization-creation-cloudformation-code-bucket \
      ParameterKey=CloudFormationStackName,ParameterValue=MyCloudFormationStack \
      ParameterKey=S3BucketName,ParameterValue=aws-organization-creation-cloudformation-code-bucket \
      ParameterKey=ExcelFileKey,ParameterValue=User-Input.csv \
  --capabilities CAPABILITY_NAMED_IAM

