# Region vs Availability Zone (AZ)

#### **1. AWS Region**

An AWS Region is a geographically distinct location that consists of multiple Availability Zones.

Each region is isolated from others to ensure fault tolerance.

AWS has multiple regions worldwide (e.g., us-east-1, ap-south-1, eu-west-1).

Customers can choose a region based on factors like latency, compliance, or cost.

Each Amazon EC2 Region is designed to be isolated from the other Amazon EC2 Regions. This achieves the greatest possible fault tolerance and stability.
When you view your resources, you see only the resources that are tied to the Region that you specified.
This is because Regions are isolated from each other, and we don't automatically replicate resources across Regions.
When you launch an instance, you must select an AMI that's in the same Region. If the AMI is in another Region, you can copy the AMI to the Region you're using.
Note that there is a charge for data transfer between Regions.


#### **2. Availability Zone (AZ)**

An Availability Zone (AZ) is a data center or a group of data centers within an AWS Region.


Each AZ is physically separate but connected via low-latency networking.

AZs ensure high availability and fault tolerance—if one AZ fails, another AZ can take over.

Each AWS Region has multiple AZs (e.g., us-east-1a, us-east-1b, us-east-1c).

When you launch an instance, you can select an Availability Zone or let us choose one for you. If you distribute your instances across multiple Availability Zones and one instance fails, you can design your application so that an instance in another Availability Zone can handle requests. You can also use Elastic IP addresses to mask the failure of an instance in one Availability Zone by rapidly remapping the address to an instance in another Availability Zone.


![image](https://github.com/user-attachments/assets/1ca8563c-b788-4134-971b-0c2c44b2a74c)



# **Introduction to EC2 service**

Amazon Elastic Compute Cloud (Amazon EC2) provides scalable computing capacity in the Amazon Web Services (AWS) cloud. Using Amazon EC2 eliminates your need to invest in hardware up front, so you can develop and deploy applications faster. You can use Amazon EC2 to launch as many or as few virtual servers as you need, configure security and networking, and manage storage. Amazon EC2 enables you to scale up or down to handle changes in requirements or spikes in popularity, reducing your need to forecast traffic.

#### Features of Amazon EC2

Amazon EC2 provides the following features:

• Virtual computing environments, known as instances

• Preconfigured templates for your instances, known as Amazon Machine Images (AMIs), that package
the bits you need for your server (including the operating system and additional software)

• Various configurations of CPU, memory, storage, and networking capacity for your instances, known as
instance types

• Secure login information for your instances using key pairs (AWS stores the public key, and you store
the private key in a secure place)

• Storage volumes for temporary data that's deleted when you stop or terminate your instance, known
as instance store volumes

• Persistent storage volumes for your data using Amazon Elastic Block Store (Amazon EBS), known as
Amazon EBS volumes

• Multiple physical locations for your resources, such as instances and Amazon EBS volumes, known as
Regions and Availability Zones

• A firewall that enables you to specify the protocols, ports, and source IP ranges that can reach your
instances using security groups

• Static IPv4 addresses for dynamic cloud computing, known as Elastic IP addresses

• Metadata, known as tags, that you can create and assign to your Amazon EC2 resources

• Virtual networks you can create that are logically isolated from the rest of the AWS cloud, and that you
can optionally connect to your own network, known as virtual private clouds (VPCs)

