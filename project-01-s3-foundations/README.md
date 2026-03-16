# Project 01 - AWS S3 Foundations

This project documents my first hands-on lab with **Amazon S3**.

The goal of this project is to learn the fundamentals of S3 by creating a private bucket, uploading files, organizing objects with prefixes, and testing basic operations from both the AWS Console and the AWS CLI.

---

## Project Goal

Build a simple S3 lab that demonstrates:

- bucket creation
- object upload and download
- logical folder structure with prefixes
- metadata and tags
- copy and delete operations
- private-by-default storage setup

---

## What I Want to Learn

With this project, I want to understand:

- how Amazon S3 stores data
- the difference between buckets, objects, keys, and prefixes
- how to organize files properly inside a bucket
- how to manage files through the AWS Console
- how to perform the same actions using AWS CLI
- how to document cloud work in a professional way on GitHub

---

## Tools Used

- **Amazon Web Services**
- **Amazon S3**
- **AWS Management Console**
- **AWS CLI**
- **GitHub**

---

## Project Structure

This project folder contains:

- `README.md` → project overview
- `commands.md` → AWS CLI commands used during the lab
- `notes/lessons-learned.md` → notes, mistakes, and lessons learned
- `sample-policies/bucket-notes.md` → notes about bucket settings and security choices
- `screenshots/` → screenshots from the AWS Console

---

## S3 Concepts Practiced

This lab focuses on the following Amazon S3 concepts:

- **Bucket**: the main container for storing objects
- **Object**: a file stored in S3
- **Key**: the full path/name of the object
- **Prefix**: the logical structure used to group objects
- **Metadata**: extra information attached to objects
- **Tags**: key-value labels for organization and management

---

## Planned Bucket Design

I will create a private bucket for this lab and organize it using prefixes like:

- `raw/`
- `processed/`
- `archive/`

Example object paths:

- `raw/file1.txt`
- `raw/sample-data.csv`
- `processed/report-v1.pdf`
- `archive/old-image.jpg`

This helps simulate a realistic storage structure instead of uploading random files into the root of the bucket.

---

## Lab Activities

The activities planned for this project are:

1. Create a new private S3 bucket
2. Upload multiple sample files
3. Organize files using prefixes
4. Add metadata to selected objects
5. Add tags to selected objects
6. Download files from the bucket
7. Copy files from one prefix to another
8. Delete test files
9. Compare Console actions with AWS CLI commands
10. Document results with screenshots and notes

---

## Example Files Used

I plan to upload a mix of sample files such as:

- `.txt`
- `.csv`
- `.json`
- `.jpg`
- `.pdf`

This will help me understand how S3 handles different object types.

---

## Security Approach

This bucket is intended to remain **private**.

For this first project, I am not making the bucket public.  
The focus is on learning the basics safely and following good security practices from the beginning.

Basic security choices for this lab:

- private bucket
- no public access
- use AWS account/IAM access only
- avoid using the root account for daily work

---

## Evidence to Collect

To make this project useful as a portfolio item, I will collect:

- screenshots of the bucket configuration
- screenshots of uploaded objects
- screenshots showing prefixes
- examples of metadata and tags
- AWS CLI command history
- notes about problems and fixes

---

## Expected Outcome

By the end of this project, I should be able to:

- create and manage an S3 bucket
- upload and organize objects correctly
- understand logical folder structures in S3
- use basic AWS CLI commands for S3
- document a cloud lab in a clean and professional way

---

## Current Status

Project status: **In Progress**

---

## Next Steps

After finishing this project, I plan to continue with:

- **Project 02 - Versioned Asset Repository**
- **Project 03 - Secure File Sharing with Presigned URLs**

---

## Author

Created by **Davide** as part of my AWS learning portfolio.
