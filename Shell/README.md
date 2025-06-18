# 🐚 Shell Scripts Collection

Welcome to the `shell/` folder — a curated collection of practical and real-world shell scripts designed to automate, monitor, and simplify common DevOps and sysadmin tasks.

## 📁 Folder Structure

Each script in this directory serves a specific purpose and is accompanied by comments for clarity.


## 📜 Script Highlights

### 1. `aws_resource_report.sh`
- **Purpose**: Generates a summary report of AWS resources like EC2, S3, Lambda, and IAM users.
- **Use Case**: Helps cloud admins monitor resource utilization and cost.
- **Command**: `./aws_resource_report.sh > aws_report.txt`

### 2. `backup_and_sync.sh`
- **Purpose**: Automates backup of critical directories and syncs them to a remote server or S3.
- **Use Case**: Regular backups for disaster recovery.
- **Command**: `./backup_and_sync.sh /path/to/data /backup/target`

### 3. `system_health_check.sh`
- **Purpose**: Checks CPU, memory, disk usage, and running services.
- **Use Case**: Scheduled system health checks via cron.
- **Command**: `./system_health_check.sh`

### 4. `log_cleaner.sh`
- **Purpose**: Finds and deletes old logs beyond a retention period.
- **Use Case**: Keeps disk usage in check on production servers.
- **Command**: `./log_cleaner.sh /var/log 30`

### 5. `user_audit.sh`
- **Purpose**: Lists active users, login history, and sudo privileges.
- **Use Case**: Security auditing and compliance tracking.
- **Command**: `./user_audit.sh`

## ⏰ Cron Integration
Many scripts are cron-ready. Example:
```bash
# Run system health check daily at 7AM
`0 7 * * * /path/to/shell/system_health_check.sh >> /var/log/sys_health.log`
```
## 🧰 Prerequisites
- Unix/Linux-based environment (macOS, Ubuntu, CentOS, etc.)
- Bash version 4.x or higher
- Make sure shell scripts have executable permissions:
  ```bash
  chmod +x script_name.sh

## 🙌 Contributions
Contributions are welcome! 🚀

If you have a useful shell script or improvement to existing ones:
1. Fork this repository
2. Add your script to the `shell/` folder
3. Update the `README.md` if needed
4. Create a pull request

Please follow best practices and comment your code for clarity.  
Let’s automate the world together! 💡
