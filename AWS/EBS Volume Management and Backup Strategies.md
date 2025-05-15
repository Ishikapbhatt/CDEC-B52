# **EBS**

Amazon EBS (Elastic Block Store) is a persistent block storage service designed for AWS EC2 instances. Unlike Ephemeral Storage, EBS retains data even when an instance is stopped or restarted.

#### **Types of EBS Volumes**

**1️⃣ General Purpose SSD (gp3, gp2)**

Best for: Web servers, application servers, dev/test environments

Performance: Up to 16,000 IOPS

Throughput: gp3 – 1,000 MB/s, gp2 – 250 MB/s

Recommendation: Use gp3 (cheaper & better than gp2)

🔹 Example Use Case: Running a WordPress website on EC2

**2️⃣ Provisioned IOPS SSD (io2, io1)**

Best for: High-performance transactional databases (e.g., SAP HANA, MongoDB, MySQL)

Performance: Up to 256,000 IOPS

Throughput: Up to 4,000 MB/s

Recommendation: Use io2 (better durability & performance than io1)

🔹 Example Use Case: Large-scale financial transaction processing system


**3️⃣ Throughput Optimized HDD (st1)**

Best for: Big data, log processing, data warehousing

Performance: Throughput-based, not IOPS-focused

Throughput: Up to 500 MB/s

Cost: Lower than SSD but higher than sc1

🔹 Example Use Case: Apache Kafka storage for streaming logs


**4️⃣ Cold HDD (sc1)**

Best for: Long-term archival & infrequent access

Performance: Lowest cost HDD, throughput up to 250 MB/s

Cost: Cheapest among all EBS types



🔹 Example Use Case: Storing old compliance logs
