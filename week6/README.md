                                                # Terraform Setup                                                
 Below are the basic step-by-step instructions on setting up and initailizing your terraform

Programs to use
* VS code, GitBash or Powershell for running the TF (Terraform) cmds
* Use the AWS CLI to verify & identify your credentials
* Download Terraform which is a (IaC) software tool from "HashiCorp" - no third party bootlegs

                                             Files To modify & Not modify
 * ✅ Modify: main.tf, variables.tf, outputs.tf, and any custom .tf configuration files.
 * ❌ Do Not Modify: hidden folders like .terraform/, or system-generated .terraform.lock.hcl

                                                Important CMD'S
- aws sts get-caller-identity (verify aws credentails)
- terraform init (prepairing local enviroment for terraform) 
- terraform fmt ( sets up consisten readlable standards)
- terraform validate ( self explanitory)
- terraform plan ( "dry run" showing what TF will execute)
- terraform apply (self explanitory)

                                            Installs Chocolatey/Homenbrew

  Depending on your operating system you will need to download and install either (CHOCOLATEY) for windows
  Or if your a MAC user you should download and install (HOMEBREW)

  Choose one of the following extraction methods:

* Option 1 (Windows Utility – Recommended):
Right-click the ZIP file → Extract All → follow prompts → open the new folder named scripts_chocolatey-main.

If you don’t see Extract All, right-click → Show more options → choose from the new menu.

* Option 2 (Using 7-Zip):
Right-click the ZIP file → 7-Zip → Extract Here → open the new folder named scripts_chocolatey-main.

                                              Run the installer scripts

1. Inside the extracted folder, open and read the instructions text file.
2. Follow the provided instructions (and troubleshooting steps if necessary).
3. You will eventually run install scripts that download the required programs (packages).
   
You may need to:
* Run scripts as Administrator or provide your password.
* Bypass Windows SmartScreen by clicking More Info → Run Anyway. (install can take up-to 45 min)

Verify CHOCOLATEY instilation by typing (ls) *system list* cmd

WINDOWS
1. Search for PowerShell on the bottom toolbar.

2. Right-click and select Run as Administrator.

3. When prompted by Windows UAC, click Yes.

Type the command (choco list ) and press Enter

                                                  TERRAFORM INSTALLATION

Install Terraform  CMD's (in Chocolatey)
- choco install terraform -y          # Install Terraform
- choco install git -y                # Install Git
- choco install vscode -y             # Install VS Code

Upgrade Terraform  CMD's (if necessary)
- choco upgrade terraform -y          # Upgrade Terraform
- choco upgrade git -y                # Upgrade Git
- choco upgrade vscode -y             # Upgrade VS Code

Verify if Terraform is installed
- terraform -version

                                                  CREATE YOUR PROJECT IN LOCAL REPOSITORY ( YOUR COMPUTER )

  cd C:\Users\computername\Documents\TheoWAF\class7\AWS\Homework\ *this is your path to follow*
mkdir week-6-homework *cmd to make directory (folder) *
cd week-6-homework *navigate into said directory (folder) *
touch 0-authentication.tf 1-vpc.tf A-backend.tf *creates a file*
code . *opens VSCODE *

                                                              Important Notice
  You will need to run the ( .gitignore ) cmd found in [Aaron Mcdonals repo](https://github.com/aaron-dm-mcdonald/Class7-notes/blob/main/102125/.gitignore)

  🛑 DO NOT EDIT: .terraform/, terraform.tfstate, or .terraform.lock.hcl

                                                            Initialize and Validate CMD's

terraform init          # Initialize Terraform Configuration
terraform fmt           # Format Your Terraform Code
terraform validate      # Validate Your Terraform Syntax Code
terraform plan          # Plan Your Terraform Configuration
terraform destroy       # Destroy Your Terraform Resources

                                                                Extra Important GIT tips

git init
git add .
git commit -m "initial commit"
git branch -M main
git push -u origin main
