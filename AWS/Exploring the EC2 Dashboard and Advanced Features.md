# **Instance Types**

#### **1. General-Purpose Instances**

Balanced CPU, memory, and networking

Ideal for web servers, application servers, and development environments

![image](https://github.com/user-attachments/assets/64aa92c4-669c-4e07-83fb-9f4421c0792e)


#### **2. Compute-Optimized Instances**

High CPU power for compute-heavy applications

Suitable for gaming, machine learning inference, and high-performance computing (HPC)

![image](https://github.com/user-attachments/assets/3a0ea84f-8f5a-47a2-9390-cab100bfdfd7)


#### **3. Memory-Optimized Instances**

Designed for applications requiring large amounts of RAM

Best for in-memory databases (Redis, SAP HANA), caching, and big data analytics

![image](https://github.com/user-attachments/assets/1910630f-661c-4520-b621-2fc835599fb8)


#### **4. Storage-Optimized Instances**

Optimized for high-throughput and low-latency storage

Best for big data, high-performance databases, and data warehousing

![image](https://github.com/user-attachments/assets/cd324ae8-fcfb-471a-94b7-168c6be2ce77)


#### **5. Accelerated Computing Instances**

Use GPUs and FPGAs for intensive workloads

Best for AI/ML, deep learning, and video processing


![image](https://github.com/user-attachments/assets/3157c0e8-94ec-4b53-a36b-6d48ba251779)


# Status Checks in EC2

**1. System Status Check**

✅ Monitors AWS Infrastructure (hardware, networking, power, etc.)

**🔴 Fails when:**

AWS hardware issues (e.g., power failure)

Networking issues in the AWS data center

Host machine failure

Loss of network connectivity

**🛠 Fix:**

Reboot the instance (Actions > Instance State > Reboot)

Stop & Start the instance

Change the instance AZ by creating a new one from a snapshot


**2. Instance Status Check**

✅ Monitors the OS inside the instance (boot errors, file system issues, etc.)

**🔴 Fails when:**

OS-related issues (e.g., corrupted boot volume)

Kernel panics

SSH or RDP misconfigurations

Stuck processes or high CPU usage

**🛠 Fix:**

Check system logs (Actions > Monitor & troubleshoot > Get system log)

Restart instance in recovery mode

Detach and reattach the root volume

Check security groups and IAM roles


# Purchasing Options

When you sign up for AWS, you can get started with Amazon EC2 for free using the AWS Free Tier. Amazon EC2 provides the following purchasing options for instances:

**On-Demand Instances**

Pay for the instances that you use by the second, with no long-term commitments or upfront payments.

**Savings Plans**

You can reduce your Amazon EC2 costs by making a commitment to a consistent amount of usage, in USD per hour, for a term of 1 or 3 years.

**Reserved Instances**

You can reduce your Amazon EC2 costs by making a commitment to a specific instance configuration, including instance type and Region, for a term of 1 or 3 years.

**Spot Instances**

Request unused EC2 instances, which can reduce your Amazon EC2 costs significantly.


# **AMI**

Amazon Web Services (AWS) publishes many Amazon Machine Images that contain common software
configurations for public use. In addition, members of the AWS developer community have published
their own custom AMIs. You can also create your own custom AMI or AMIs; doing so enables you to
quickly and easily start new instances that have everything you need. For example, if your application is
a website or a web service, your AMI could include a web server, the associated static content, and the
code for the dynamic pages. As a result, after you launch an instance from this AMI, your web server
starts, and your application is ready to accept requests.

All AMIs are categorized as either backed by Amazon EBS, which means that the root device for an
instance launched from the AMI is an Amazon EBS volume, or backed by instance store, which means
that the root device for an instance launched from the AMI is an instance store volume created from a
template stored in Amazon S3.

The description of an AMI indicates the type of root device (either ebs or instance store). This is
important because there are significant differences in what you can do with each type of AMI.
