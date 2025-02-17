# Configure the AWS Provider

provider "aws" {

  region                   = "ap-south-1"
  shared_credentials_files = ["/home/e1087/live-infra/.aws/credentials"]

}