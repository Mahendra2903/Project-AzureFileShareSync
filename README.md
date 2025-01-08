<<<<<<< HEAD
# Project 1: Azure File Share Sync

## Description
This project automates the synchronization of files between an Azure File Share and a local directory using AzCopy and cron jobs.

## Features
- Two-way file synchronization (local to Azure and vice versa).
- Scheduled sync every 10 minutes using cron.
- Logs to capture execution and debugging details.

## File Structure
AzureSharedDrive/
├── docs/
│   ├── sync_files.sh        # Script for AzCopy sync
│   ├── cron_debug.log       # Debug log for cron jobs
├── README.md                # Project documentation

## How to Run
1. Ensure AzCopy is installed.
2. Update `sync_files.sh` with your Azure File Share SAS URL and directory paths.
3. Add the script to a cron job for automation:
*/10 * * * * /path/to/sync_files.sh >> /path/to/cron_debug.log 2>&1

## Learnings
- Working with AzCopy for file synchronization.
- Automating tasks with cron on macOS.
- Debugging issues with cron and macOS security restrictions.

## Prerequisites
- Azure File Share.
- AzCopy installed on your system.
- macOS environment with Full Disk Access enabled for cron jobs.

## Future Improvements
- Use `launchd` on macOS instead of cron for better task management.
- Enhance security with Azure Role-Based Access Control (RBAC).
- Monitor storage with Azure Monitor and set up alerts.

## Author
Mahi Reddy
=======
# Project-AzureFileShareSync
Automating two-way sync between Azure File Share and local directory using AzCopy and cron jobs
>>>>>>> origin/main
