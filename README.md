# AWS Resources Tracker

This project helps track AWS resources and retrieve updated information periodically. It allows users to monitor AWS services efficiently and automate updates using a cron job.

## Features
- Fetches details of AWS resources such as EC2 instances, S3 buckets, Lambda functions, and IAM users.
- Provides an automated way to track changes in AWS infrastructure.
- Can be scheduled to run at specific time intervals using cron jobs.

## Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/indrajeet1705/AWS-Resources-Tracker.git
   cd AWS-Resources-Tracker
   ```

2. Give execute permission to the script:
   ```bash
   chmod +x aws_tracker.sh
   ```

3. Configure AWS credentials using AWS CLI:
   ```bash
   aws configure
   ```
   Ensure that the configured credentials have the necessary permissions to access AWS resources.

## Usage
Run the script manually to fetch AWS resources:
   ```bash
   ./aws_tracker.sh
   ```

The script retrieves the following AWS resource details:
- **EC2 Instances**: Lists all EC2 instances currently running.
- **S3 Buckets**: Displays all available S3 buckets in the AWS account.
- **Lambda Functions**: Lists all AWS Lambda functions deployed.
- **IAM Users**: Shows the list of IAM users in the account.

## Automating with Cron Job
To automate fetching updates at a specified time interval, you can set up a cron job.

### Steps to Set Up a Cron Job (Linux/Mac)
1. Open the crontab editor:
   ```bash
   crontab -e
   ```

2. Add the following line to schedule the script (Example: Run every day at midnight):
   ```bash
   0 0 * * * /path/to/AWS-Resources-Tracker/aws_tracker.sh >> /path/to/logfile.log 2>&1
   ```
   Replace `/path/to/AWS-Resources-Tracker/aws_tracker.sh` with the actual path of the script.

3. Save and exit the crontab editor.

4. Verify the cron job is added:
   ```bash
   crontab -l
   ```

### Steps to Set Up a Scheduled Task (Windows)
For Windows, you may use the Windows Task Scheduler to run a WSL instance or a Bash emulator like Git Bash to execute the shell script.

1. Open Task Scheduler and create a new task.
2. Set the trigger to run at your desired time interval.
3. Set the action to run `bash` and provide the script path as an argument.
4. Save the task and enable it.

## Logging
To keep track of execution logs, redirect output to a log file as shown in the cron job example. This helps in debugging if needed.

## Contributing
Feel free to contribute by submitting issues or pull requests.

## License
This project is licensed under the MIT License.


