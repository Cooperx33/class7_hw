				#AWS EC2 Configuration
- **Log in to the AWS Management Console:** Start by signing in to your AWS account. If you don't have one, you'll need to create one. Many of the initial services, including a `t2.micro` EC2 instance, are free for a limited time under the AWS Free Tier.
    
- **Navigate to the EC2 Dashboard:** In the search bar at the top, type "EC2" and select the service. This will take you to the EC2 dashboard.
    
- **Click "Launch instance":** In the EC2 dashboard, look for the prominent orange button that says "Launch instance" and click it. This starts the instance creation wizard.
    
- **Name and Configure the Instance:**
    
    - **Name:** Give your instance a descriptive name so you can easily identify it later (e.g., "MyFirstWebServer").
        
    - **Application and OS Images (AMI):** An AMI is a template for your instance's operating system and software. Choose a **free tier eligible** AMI, such as **Amazon Linux 2**, **Ubuntu Server**, or **Windows Server**. These are clearly marked to help you avoid charges.
        
    - **Instance Type:** Select a **free tier eligible** instance type. The **t2.micro** is the default and is a great choice for getting started.
        
- **Create or Select a Key Pair:**
    
    - A **key pair** is essential for securely connecting to your instance. Choose to "Create a new key pair."
        
    - Give it a name and click "Download Key Pair." The file will be downloaded to your computer with a `.pem` extension. **Keep this file secure** and do not share it, as it is the only way to log into your instance.
        
- **Configure Network Settings:**
    
    - The default settings for the **VPC** (Virtual Private Cloud) and **subnet** are usually fine for a simple setup.
        
    - Under **Firewall (security groups)**, make sure you have inbound rules that allow the traffic you need. For a simple web server, you'll want to add rules for **SSH** (to connect and manage the server, port 22) and **HTTP** (to serve a website, port 80). You can set the source to "My IP" to restrict access to just your current location.
        
- **Review and Launch:**
    
    - Review the summary of your instance configuration on the right side of the page.
        
    - Once you're satisfied, click the "Launch instance" button at the bottom right.
        
- **Connect to Your Instance:**
    
    - After the instance is launched, it will appear in the "Instances" list with a "Running" status. Select your instance and click the "Connect" button.


Teardown Instructions 

- **Navigate to the EC2 Dashboard:** In the search bar at the top, type "EC2" and click on the service to open the dashboard.
    
- **View Your Instances:** In the left-hand navigation pane, under **Instances**, click on "Instances". This will show you a list of all your EC2 instances.
    
- **Select the Instance:** Find the instance you want to delete and select the checkbox next to its name.
    
- **Terminate the Instance:**
    
    - Click the **"Instance state"** dropdown button at the top of the page.
        
    - From the menu that appears, select **"Terminate instance"**.
        
- **Confirm Termination:** A pop-up window will appear asking you to confirm. Read the warning carefully—this action is permanent. If you're sure, type "Terminate" into the confirmation box and click the **"Terminate"** button.
    
- **Check the Status:** The instance's state will change to "shutting-down" and then "terminated." The instance may remain visible in your list for a short time after termination but will not incur any more charges.
- 