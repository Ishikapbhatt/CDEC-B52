# Jenkins Essentials 🚀

## 🌟 Introduction to CI Process

### What is Continuous Integration (CI)?
Continuous Integration is a software development practice where developers frequently integrate their code into a shared repository. Each integration is automatically verified by:

- **Automated Build Processes** 📦
- **Automated Testing** ✅

This ensures the early detection of integration issues and maintains a high-quality codebase.

### Benefits of CI
- 🕒 **Faster Feedback Loop**: Detect issues early.
- 🔒 **Improved Code Quality**: Continuous testing and validation.
- 🤝 **Collaboration**: Teams work cohesively.
- 📈 **Efficiency**: Streamlined development workflow.

---

## 🌐 Difference Between Continuous Delivery and Continuous Deployment

| Aspect                        | Continuous Delivery 🚚                             | Continuous Deployment 🚀                              |
|-------------------------------|--------------------------------------------------|--------------------------------------------------|
| **Definition**                | Ensures code is always in a deployable state.    | Automatically deploys every change to production.|
| **Deployment Trigger**        | Manual approval for production release.          | Fully automated without manual intervention.     |
| **Use Case**                  | Suitable for environments requiring compliance.  | Ideal for rapid release environments.            |
| **Automation Level**          | High, except production deployment.              | Fully automated, end-to-end.                     |

---

## 🧰 Introduction to Jenkins

### What is Jenkins?
Jenkins is an open-source automation server widely used for:
- **Building** 🛠️
- **Testing** 🧪
- **Deploying** 🚀 applications in a CI/CD pipeline.

### Why Jenkins?
- 🌍 **Extensive Community Support**: A vast plugin ecosystem.
- 🖥️ **Cross-Platform**: Runs on various OS (Windows, Linux, macOS).
- 📈 **Scalable**: From small teams to large enterprises.
- 🔌 **Integration**: Easily integrates with version control systems and build tools.

### Core Features
- 🎛️ **Pipeline as Code**: Automate your workflows using Jenkinsfile.
- ⚙️ **Plugins**: Extend functionality with 1,500+ plugins.
- 📊 **Monitoring**: Track builds and test results in real-time.
- 🛡️ **Security**: Role-based access control and integration with SSO.

---

## 🛠️ Installing Jenkins Server

### Prerequisites
1. A server with **Linux (Ubuntu/Debian)** OS. 🐧
2. **Java** installed (Jenkins requires Java 11 or later). ☕

### Steps to Install Jenkins

#### Step 1️⃣: Update Your System
```bash
sudo apt update && sudo apt upgrade -y
```

#### Step 2️⃣: Install Java
```bash
sudo apt install openjdk-11-jdk -y
```
Verify Java installation:
```bash
java -version
```

#### Step 3️⃣: Add Jenkins Repository
```bash
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null

echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
```

#### Step 4️⃣: Install Jenkins
```bash
sudo apt update
sudo apt install jenkins -y
```

#### Step 5️⃣: Start and Enable Jenkins Service
```bash
sudo systemctl start jenkins
sudo systemctl enable jenkins
```

#### Step 6️⃣: Access Jenkins Web Interface
1. Open your browser and navigate to:
   ```
   http://<your-server-ip>:8080
   ```
2. Retrieve the initial admin password:
   ```bash
   sudo cat /var/lib/jenkins/secrets/initialAdminPassword
   ```
3. Complete the setup wizard and install suggested plugins.

---

## 📖 Summary
- CI processes automate integration and testing.
- Continuous Delivery focuses on deployable code, while Continuous Deployment fully automates releases.
- Jenkins is a powerful tool for CI/CD with robust features and plugins.
- Installation involves adding repositories, installing Java, and setting up Jenkins on a Linux server.


-----

# Jenkins Essentials: Freestyle Job and Git Plugin

### 🚀 **Create Your First Freestyle Job**
A **Freestyle Job** in Jenkins is a basic project that allows you to configure and automate simple tasks, such as building code or running scripts. Here's how to create your first freestyle job:

1. **Log in to Jenkins**
   - Open your Jenkins dashboard in your browser.
   - Use your admin credentials to log in.

2. **Create a New Job**
   - Click on `New Item` from the Jenkins dashboard.
   - Enter the **name** for your job (e.g., `MyFirstFreestyleJob`).
   - Select `Freestyle project` and click `OK`.

3. **Configure the Job**
   - **Description**: Add a meaningful description for your job.
   - **Source Code Management**: Select `None` for now.
   - **Build Triggers**: Choose the appropriate trigger, such as "Build periodically" or "Poll SCM" if applicable.
   - **Build Steps**: Add a build step like `Execute shell` and provide the command to execute.

4. **Save and Build**
   - Click `Save` to save the configuration.
   - Click `Build Now` to execute the job.

5. **View Build Results**
   - Check the console output by clicking on the build number in the Build History section.

---

### 🔧 **Install Git Plugin**
To pull source code from a Git repository, you need to install the Git plugin.

1. **Navigate to Plugin Manager**
   - Go to `Manage Jenkins` > `Manage Plugins`.

2. **Search for Git Plugin**
   - Under the `Available` tab, search for `Git Plugin`.
   - Select the plugin and click `Install without restart`.

3. **Verify Installation**
   - After installation, go to `Manage Jenkins` > `Installed Plugins` and ensure the `Git Plugin` is listed.

4. **Set Up Global Git Configuration** *(Optional)*
   - Go to `Manage Jenkins` > `Configure System`.
   - Under `Git`, add global configurations like `Name` and `Email` for Git commits.

---

### 🌟 **Create Freestyle Job to Pull Source Code**
Here are the steps to create a freestyle job that pulls source code from a Git repository:

1. **Create a New Freestyle Job**
   - From the Jenkins dashboard, click `New Item`.
   - Enter the job name (e.g., `PullSourceCodeJob`) and select `Freestyle project`. Click `OK`.

2. **Configure Source Code Management**
   - In the job configuration page, go to `Source Code Management`.
   - Select `Git`.
   - Enter the Git repository URL (e.g., `https://github.com/user/repo.git`).
   - Provide credentials if the repository is private.

3. **Build Steps**
   - Add a build step to verify the code, such as `Execute shell` with a command like:
     ```bash
     ls -l
     ```

4. **Save and Build**
   - Click `Save` to save the job configuration.
   - Trigger a build by clicking `Build Now`.

5. **Verify Build**
   - Check the console output to ensure the code is pulled successfully.

---

### 🤔 **Tips and Suggestions**
- Use the **Build Triggers** to automate jobs (e.g., poll the repository for changes).
- Test the repository URL in a local terminal before adding it to Jenkins.
- Use the Git plugin's advanced options to handle branches, tags, and shallow clones.

---

# Jenkins Build Agents and Job Configuration 🚀

## 1. Install SSH Build Agent Plugin 🔌

The SSH Build Agent Plugin allows Jenkins to manage and connect with build agents using SSH.

### Steps to Install:
1. Navigate to **Manage Jenkins** > **Manage Plugins**.
2. Go to the **Available** tab.
3. Search for `SSH Build Agents`.
4. Select the plugin and click **Install without restart**.

---

## 2. Create and Attach SSH Agents to Master Jenkins 🤖

Build agents help distribute build loads across multiple machines.

### Steps to Configure SSH Build Agent:
1. **Add Node (Build Agent)**:
   - Go to **Manage Jenkins** > **Manage Nodes and Clouds**.
   - Click on **New Node**.
   - Provide a name for the node (e.g., `Build-Agent-1`) and select **Permanent Agent**.
   - Click **OK**.

2. **Configure Node**:
   - Enter the following details:
     - **Remote root directory**: `/home/jenkins` (or any desired directory).
     - **Labels**: Add labels to identify the node (e.g., `linux`, `build-agent`).
   - Under **Launch Method**, select **Launch agent via SSH**.
     - Enter the **host address**, **credentials**, and the **port** (default: 22).
     - Test the connection to ensure proper configuration.
   - Save the configuration.

3. **Verify Agent**:
   - Once the node is added, it will appear on the **Manage Nodes** page.
   - Check the status; it should be **online**.

### Benefits of SSH Agents:
- Centralized job execution.
- Improved build performance with distributed workloads.
- Scalability for larger projects.

---

## 3. Job Configuration 🛠️

Job configuration defines how Jenkins executes a task.

### Key Configuration Options:
1. **General**:
   - Add a description of the job.
   - Restrict where this project can be run by specifying agent labels (e.g., `linux`, `windows`).

2. **Source Code Management (SCM)**:
   - Integrate with Git, Subversion, or other SCM tools.
   - Provide the repository URL and credentials.

3. **Build Triggers**:
   - Poll SCM: Trigger builds based on repository changes.
   - Build Periodically: Schedule builds at specific times.

4. **Build Environment**:
   - Add environment variables.
   - Delete workspace before the build starts.

5. **Build Steps**:
   - Execute shell scripts, batch commands, or invoke build tools.

6. **Post-Build Actions**:
   - Archive artifacts, publish test reports, or send notifications.

---

## 4. Parameterized Jobs 🧰

Parameterized jobs allow dynamic input during the job execution.

### Steps to Parameterize a Job:
1. Create or open a Jenkins job.
2. Check **This project is parameterized** under the **General** tab.
3. Click **Add Parameter** and choose from the available options:
   - **String Parameter**: Accepts a text value.
   - **Boolean Parameter**: Provides a checkbox for true/false values.
   - **Choice Parameter**: Allows selection from predefined options.
   - **File Parameter**: Uploads a file as a build input.
4. Save the configuration.

### Usage in Build Steps:
- Use the parameters in shell or batch commands with `$PARAMETER_NAME` (Linux) or `%PARAMETER_NAME%` (Windows).

### Example Use Case:
**Scenario**: Build a project based on an environment (e.g., `dev`, `test`, `prod`).

**Steps**:
1. Add a **Choice Parameter** with options `dev`, `test`, and `prod`.
2. In the build step, use the parameter to deploy to the selected environment:
   ```bash
   echo "Deploying to $ENVIRONMENT environment"
   ```

---

# Jenkins Pipeline Essentials 🚀

## Install Pipeline Plugin 🛠️
1. Navigate to **Manage Jenkins** -> **Manage Plugins**.
2. Go to the **Available** tab and search for **Pipeline**.
3. Select the **Pipeline** plugin and click **Install without Restart**.
4. Wait for the installation to complete. ✅

---

## Scripted Pipeline vs Declarative Pipeline 📜

### Scripted Pipeline 🧑‍💻
- **Syntax:** Groovy-based, imperative style.
- **Flexibility:** Offers complete control and customization.
- **Structure:** Allows free-form Groovy code.
- **Example:**

  ```groovy
  node {
      stage('Build') {
          echo 'Building...'
      }
      stage('Test') {
          echo 'Testing...'
      }
      stage('Deploy') {
          echo 'Deploying...'
      }
  }
  ```

- **Use Case:** Suitable for advanced users who need fine-grained control.

---

### Declarative Pipeline 🧑‍🎨
- **Syntax:** Groovy-based, declarative style.
- **Flexibility:** More structured and easier to use.
- **Structure:** Requires predefined syntax.
- **Example:**

  ```groovy
  pipeline {
      agent any
      stages {
          stage('Build') {
              steps {
                  echo 'Building...'
              }
          }
          stage('Test') {
              steps {
                  echo 'Testing...'
              }
          }
          stage('Deploy') {
              steps {
                  echo 'Deploying...'
              }
          }
      }
  }
  ```

- **Use Case:** Ideal for beginners and standard pipeline structures.

---

## Write a Basic 4-Stage Pipeline 🛠️

### Jenkinsfile (Declarative Pipeline)

```groovy
pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                echo 'Pulling source code from repository...'
                checkout scm
            }
        }
        stage('Build') {
            steps {
                echo 'Building the project...'
                // Add your build commands here
            }
        }
        stage('Test') {
            steps {
                echo 'Running tests...'
                // Add test commands here
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying the application...'
                // Add deployment commands here
            }
        }
    }
}
```

---

## Add a Pull Stage 🔄

Adding a pull stage to fetch source code from a Git repository ensures you always have the latest code for your pipeline.

### Updated Jenkinsfile with Pull Stage

```groovy
pipeline {
    agent any
    stages {
        stage('Pull') {
            steps {
                echo 'Pulling source code from Git...'
                checkout([$class: 'GitSCM', 
                    branches: [[name: '*/main']],
                    userRemoteConfigs: [[url: 'https://github.com/your-repo/your-project.git']]
                ])
            }
        }
        stage('Build') {
            steps {
                echo 'Building the project...'
            }
        }
        stage('Test') {
            steps {
                echo 'Running tests...'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying the application...'
            }
        }
    }
}
```

### Key Points ✍️
- **`checkout scm`**: Automatically pulls code based on the job's SCM configuration.
- **Custom Git URL**: Replace the repository URL with your project's Git URL.
- **Branch**: Modify `name: '*/main'` to specify the desired branch.

---

# 🚀 Install Maven

### 📖 Overview
Apache Maven is a build automation tool primarily used for Java-based projects. It uses a Project Object Model (POM) file to define project configuration, dependencies, and build steps.

---

## 🛠️ Install Maven
1. **Download Maven**:
   - Go to the [Apache Maven official website](https://maven.apache.org/download.cgi).
   - Download the latest binary zip file.

2. **Install Maven**:
   - Extract the zip file to a preferred directory (e.g., `/opt/maven`).
   - Add the Maven `bin` directory to your system's `PATH` environment variable.

3. **Verify Installation**:
   ```bash
   mvn -v
   ```
   This command should display the Maven version and Java version.

---

# 🌟 Show Creating Maven Project
### Steps to Create a Maven Project:
1. **Using Maven Archetype**:
   ```bash
   mvn archetype:generate -DgroupId=com.example -DartifactId=my-app -DarchetypeArtifactId=maven-archetype-quickstart -DinteractiveMode=false
   ```
   - `groupId`: Represents the package namespace (e.g., `com.example`).
   - `artifactId`: Project name (e.g., `my-app`).
   - `archetypeArtifactId`: Template to generate the project.

2. **Navigate to the Project**:
   ```bash
   cd my-app
   ```

3. **Project Structure**:
   ```
   my-app/
   ├── pom.xml
   └── src/
       ├── main/
       │   └── java/
       │       └── com/example/App.java
       └── test/
           └── java/
               └── com/example/AppTest.java
   ```

---

# 📂 Maven Directory Hierarchy
### Standard Directory Layout:
- **src/main/java**: Contains source code.
- **src/main/resources**: Contains application resources (e.g., `application.properties`).
- **src/test/java**: Contains test code.
- **src/test/resources**: Contains test resources.
- **pom.xml**: Core configuration file for the Maven project.

---

# 📜 Explain `pom.xml` File
The `pom.xml` file is the heart of a Maven project. It defines the project, its dependencies, build configuration, and plugins.

### Key Sections:
1. **Project Coordinates**:
   ```xml
   <groupId>com.example</groupId>
   <artifactId>my-app</artifactId>
   <version>1.0-SNAPSHOT</version>
   ```

2. **Dependencies**:
   ```xml
   <dependencies>
       <dependency>
           <groupId>junit</groupId>
           <artifactId>junit</artifactId>
           <version>4.13.2</version>
           <scope>test</scope>
       </dependency>
   </dependencies>
   ```

3. **Build Plugins**:
   ```xml
   <build>
       <plugins>
           <plugin>
               <groupId>org.apache.maven.plugins</groupId>
               <artifactId>maven-compiler-plugin</artifactId>
               <version>3.8.1</version>
               <configuration>
                   <source>1.8</source>
                   <target>1.8</target>
               </configuration>
           </plugin>
       </plugins>
   </build>
   ```

---

# 🔄 Maven Phases
Maven follows a lifecycle consisting of several phases. Some of the most commonly used phases include:

1. **Validate**: Validates the project structure and checks for missing dependencies.
2. **Compile**: Compiles the source code.
3. **Test**: Runs unit tests using the specified testing framework (e.g., JUnit).
4. **Package**: Packages the compiled code into a distributable format (e.g., `.jar` or `.war`).
5. **Install**: Installs the package into the local Maven repository.
6. **Deploy**: Copies the package to a remote repository for sharing with others.

---

# 🏗️ Maven Clean & Package to Build `.war` Artifact

### Clean the Project:
The `clean` phase removes previously compiled or packaged files:
```bash
mvn clean
```

### Package the Project:
To create a `.war` file (Web Application Archive):
1. Add the packaging type in `pom.xml`:
   ```xml
   <packaging>war</packaging>
   ```
2. Run the package phase:
   ```bash
   mvn package
   ```
3. The `.war` file will be created in the `target/` directory.

---

# 🎯 Summary
- Installed Maven and created a Maven project.
- Learned about Maven's directory hierarchy and the `pom.xml` file.
- Explored Maven phases and how to build `.war` artifacts using `clean` and `package` commands.

---

> 💡 **Pro Tip**: Always validate your Maven configuration using `mvn validate` before proceeding with complex builds.

----

# 🚀 Integrating Maven in Jenkins

## 📌 Overview
Maven is a widely used build automation tool for Java projects. Integrating Maven with Jenkins allows for continuous integration and automated builds.

---

## 🛠️ Steps to Integrate Maven in Jenkins

### 1️⃣ Install Maven in Jenkins
1. Navigate to **Manage Jenkins** → **Global Tool Configuration**.
2. Under **Maven**, click **Add Maven**.
3. Provide a name (e.g., `Maven-3.8.6`).
4. Specify the Maven installation directory or allow Jenkins to install it automatically.
5. Save the configuration.

---

### 2️⃣ Configure Jenkins to Use Maven
- Ensure that Maven is correctly set up in **Manage Jenkins** → **Global Tool Configuration**.
- If required, manually specify the Maven installation directory.

---

## 🏗️ Creating a Maven Job in Jenkins

### 🔹 Creating a Maven Freestyle Job
1. Navigate to **Jenkins Dashboard** → **New Item**.
2. Select **Maven Project** and provide a job name.
3. In the **Source Code Management** section:
   - Select **Git** and provide the repository URL.
   - Specify the branch to build (e.g., `main`).
4. In the **Build Configuration** section:
   - Set the **Root POM** as `pom.xml`.
   - Enter `clean package` in the **Goals and options** field.
5. Save and run the job.

---

## 🔨 Adding a Build Stage in a Jenkins Pipeline

### 🔹 Pipeline Configuration
A Jenkins pipeline automates Maven builds through script execution. Follow these steps:

1. Create a **Jenkins Pipeline Job**:
   - Go to **New Item** → **Pipeline**.
   - Enter a job name and click **OK**.

2. Add a **Jenkinsfile** in your repository with the following pipeline:

```groovy
pipeline {
    agent any
    stages {
        stage('Checkout Code') {
            steps {
                git url: 'https://github.com/example/repo.git', branch: 'main'
            }
        }
        stage('Build with Maven') {
            steps {
                sh 'mvn clean package'
            }
        }
    }
}
------


### SonarQube Guide

 1. Introduction to SonarQube
SonarQube is an open-source platform for continuous inspection of code quality. It helps in detecting bugs, vulnerabilities, and code smells, ensuring high-quality code development.

### Key Features:
- ** Bugs **: Identify logical errors in the code.
- **Vulnerabilities**: Detect security flaws that may lead to breaches.
- **Code Smells**: Highlight maintainability issues.
- **Duplications**: Find duplicate blocks of code.
- **Coverage**: Measure code coverage by tests.

---
# How To Install SonarQube on Ubuntu 20.04LTS

The following contents have been quoted from [the following site](https://www.vultr.com/docs/install-sonarqube-on-ubuntu-20-04-lts).

This document will talk about how to install SonarQube on Ubuntu 20.04LTS manually step by step, so that you know
what is going on and learn from it. However, if you just want to use it, you can use: [SonarQube Docker Container](https://www.sonarqube.org/features/deployment/) 
There is also a vagrant box for SonarQube, but it is not official, so I do not recommend it.

There are also many SonarQube tutorials on YouTube. (ex. [How to analyze code quality using SonarQube](https://youtu.be/2F3PYGtQr5k)).
So, if you need some help using SonarQube, it will be easy to find information you need on Internet.

That's it! Let's do it.


## 1. Prepare your Ubuntu server.
* SSH to your Ubuntu server as a non-root user with sudo access.
* Update your server.
```bash
sudo apt update
sudo apt upgrade -y
```

## 2. Install OpenJDK 11

* Install OpenJDK 11.
```bash
sudo apt install -y openjdk-11-jdk
```

## 3. Install and Configure PostgreSQL

* Add PostgreSQL repository.
```bash
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ `lsb_release -cs`-pgdg main" >> /etc/apt/sources.list.d/pgdg.list'
```

* Add PostgreSQL signing key.
```bash
wget -q https://www.postgresql.org/media/keys/ACCC4CF8.asc -O - | sudo apt-key add -
```

* Install PostgreSQL.
```bash
sudo apt install -y postgresql postgresql-contrib
```

* Enable DB server to start automatically on reboot.
```bash
sudo systemctl enable postgresql
```

* Start DB server.
```bash
sudo systemctl start postgresql
```

* Change the default PostgreSQL password.
```bash
sudo passwd postgres
```

* Switch to the postgres user.
```bash
su - postgres
```

* Create a user named `sonar`.
```bash
createuser sonar
```

* Log into PostgreSQL.
```bash
psql
```

* Set a password for the `sonar` user. Use a strong password in place of `my_strong_password`.
```bash
ALTER USER sonar WITH ENCRYPTED password 'my_strong_password';
```

* Create SonarQube database and set its owner to `sonar`.
```bash
CREATE DATABASE sonarqube OWNER sonar;
```

* Grant all privileges on SonarQube database to the user `sonar`.
```bash
GRANT ALL PRIVILEGES ON DATABASE sonarqube to sonar;
```

* Exit PostgreSQL.
```bash
\q
```

* Return to your non-root sudo user account.
```bash
exit
```

## 4. Download and Install SonarQube

* Install the zip utility, which is needed to unzip the SonarQube files.
```bash
sudo apt install -y zip
```

* Locate the latest download URL from [SonarQube official download page](https://www.sonarqube.org/downloads/).
At the time of writing this document, the download URL was as follows: 
```bash
https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.0.1.46107.zip
```

* Download the SonarQube distribution files.
```bash
sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.0.1.46107.zip
```

* Unzip the downloaded file.
```bash
sudo unzip sonarqube-9.0.1.46107.zip
```

* Move the unzipped files to `/opt/sonarqube` directory
```bash
sudo mv sonarqube-9.0.1.46107 /opt/sonarqube
```

## 5. Add SonarQube Group and User

* Create a `sonar` group.
```bash
sudo groupadd sonar
```

* Create a `sonar` user and set `/opt/sonarqube` as the home directory.
```bash
sudo useradd -d /opt/sonarqube -g sonar sonar
```

* Grant the `sonar` user access to the `/opt/sonarqube` directory.
```bash
sudo chown sonar:sonar /opt/sonarqube -R
```

## 6. Configure SonarQube

* Edit the SonarQube configuration file. 
```bash
sudo vim /opt/sonarqube/conf/sonar.properties
```
> **Step 1:** Find the following lines. line no 18 and 19 
>```
>#sonar.jdbc.username=
>#sonar.jdbc.password=
>```
> **Step 2:** Uncomment the lines, and add the database user `sonar` and password `my_strong_password` you created in Section 3.
>```
>sonar.jdbc.username=sonar
>sonar.jdbc.password=my_strong_password
>```
> **Step 3:** Below those two lines, add `sonar.jdbc.url`.
>```
>sonar.jdbc.url=jdbc:postgresql://localhost:5432/sonarqube
>```
> **Step 4:** Save and exit the file.

* Edit the sonar script file.
```bash
sudo vim /opt/sonarqube/bin/linux-x86-64/sonar.sh
```
>**Step 1:** About 50 lines down, locate this line.
>```
>#RUN_AS_USER=
>```
> **Step 2:** Uncomment the line and change it to.
>```
>RUN_AS_USER=sonar
>```
> **Step 3:** Save and exit the file.

## 7. Setup Systemd Service

* Create a systemd service file to start SonarQube at system boot.
```bash
sudo vim /etc/systemd/system/sonar.service
```
> **Step 1:** Paste the following lines to the file.
>```
>[Unit]
>Description=SonarQube service
>After=syslog.target network.target
>
>[Service]
>Type=forking
>
>ExecStart=/opt/sonarqube/bin/linux-x86-64/sonar.sh start
>ExecStop=/opt/sonarqube/bin/linux-x86-64/sonar.sh stop
>
>User=sonar
>Group=sonar
>Restart=always
>
>LimitNOFILE=65536
>LimitNPROC=4096
>
>[Install]
>WantedBy=multi-user.target
>```
> **Step 2:** Save and exit the file.

* Enable the SonarQube service to run at system startup.
```bash
sudo systemctl enable sonar
```

* Start the SonarQube service.
```bash
sudo systemctl start sonar
```

* Check the service status.
```bash
sudo systemctl status sonar
```

## 8. Modify Kernel System Limits

SonarQube uses `Elasticsearch` to store its indices in an MMap FS directory. It requires some changes to the system defaults.

* Edit the sysctl configuration file.
```bash
sudo nano /etc/sysctl.conf
```
> **Step 1:** Add the following lines.
>```
>vm.max_map_count=262144
>fs.file-max=65536
>ulimit -n 65536
>ulimit -u 4096
>``` 
> **Step 2:** Save and exit the file.

* Reboot the system to apply the changes.
```bash
sudo reboot
```

## 9. Access SonarQube Web Interface

* Access SonarQube in a web browser at your server's IP address on port 9000. For example:
```
http://localhost:9000
```

* Log in with username `admin` and password `admin`. SonarQube will prompt you to change your password.

> **WARNING!** 
> SonarQube ships with a default administrator username and password of admin. This default password is not secure, so you’ll want to update it to something more secure as a good security practice.

## 10. Secure SonarQube

> **NOTE:**
> The following contents were quoted from [DigitlOcean site tutorial page](https://www.digitalocean.com/community/tutorials/how-to-ensure-code-quality-with-sonarqube-on-ubuntu-18-04),
> especially from **Step 5 - Securing SonarQube** to the end of that page.

Start by visiting the URL of your installation, and log in using the default credentials. 
If prompted to start a tutorial, simply click Skip this tutorial to get to the dashboard.

Once logged in, click the `Administration` tab from the top menu, select `Security` from the drop-down list, 
and then select `Users`:

![screenshot1](eUpM2OE.png)

From here, click on the small cog on the right of the `Administrator` account row, then click on `Change password`. 
Be sure to change the password to something that’s easy to remember but hard to guess.

Now create a normal user that you can use to create projects and submit analysis results to your server 
from the same page. Click on the `Create User` button on the top-right of the page:

![screenshot2](o9BqYtc.png)

Then create a token for a specific user by clicking on the button in the `Tokens` column 
and giving this token a name. You’ll need this token later when you invoke the code scanner, 
so be sure to write it down in a safe place.

Finally, you may notice that the SonarQube instance is wide-open to the world, 
and anyone could view analysis results and your source code. This setting is highly insecure, 
so we’ll configure SonarQube to only allow logged-in users access to the dashboard. 
From the same `Administration` tab, click on `Configuration`, then `General` Settings, 
and then `Security` on the left pane. Flip the switch that says `Force user authentication` to enable authentication,
then click on the `Save` button below the switch.

![screenshot3](CJwI7pe.png)

Now that you’re done setting up the server, let’s set up the SonarQube scanner.


## 11. Setting Up the Code Scanner

SonarQube’s code scanner is a separate package that you can install on a different machine than the one running 
the SonarQube server, such as your local development workstation or a continuous delivery server. There are 
packages available for Windows, MacOS, and Linux which you can find at [the SonarQube web site](https://docs.sonarqube.org/latest/analysis/scan/sonarscanner/).

In this tutorial, you’ll install the code scanner on the same server that hosts our SonarQube server.

* Start by creating a directory for the scanner:
```bash
sudo mkdir /opt/sonarscanner
```

* Change into that directory:
```bash
cd /opt/sonarscanner
```

* Download the SonarQube scanner for Linux using wget:
```bash
sudo wget https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-4.6.2.2472-linux.zip
```

* Extract the scanner:
```bash
sudo unzip sonar-scanner-cli-4.6.2.2472-linux.zip
```

* Delete the zip archive file:
```bash
sudo rm sonar-scanner-cli-4.6.2.2472-linux.zip
```

* After that, you’ll need to modify a few settings to get the scanner working with your server install. Open the configuration file for editing:
```bash
sudo nano sonar-scanner-cli-4.6.2.2472-linux/conf/sonar-scanner.properties
```
> **Step 1:** First, tell the scanner where it should submit the code analysis results. Un-comment the line starting with sonar.host.url and set it to the URL of your SonarQube server:
>```
>sonar.host.url=http://127.0.0.1
>``` 
> **Step 2:** Save and close the file.

* Make the scanner binary executable:
```bash
sudo chmod +x sonar-scanner-cli-4.6.2.2472-linux/bin/sonar-scanner
```

* Create a symbolic link so that you can call the scanner without specifying the path:
```bash
sudo ln -s /opt/sonarscanner/sonar-scanner-cli-4.6.2.2472-linux/bin/sonar-scanner /usr/local/bin/sonar-scanner
```

* Now that the scanner is set up, we’re ready to run our first code scan.

## 12. Run a Test Scan on SonarQube Example Projects

If you’d like to just poke around with SonarQube to see what it can do, 
you might consider running a test scan on the SonarQube example projects. 
These are [example projects](https://github.com/SonarSource/sonar-scanning-examples) 
created by the SonarQube team that contains many issues 
that SonarQube will then detect and report.

* Create a new working directory in your home directory, then change to the directory:
```bash
cd ~
mkdir sonar-test && cd sonar-test
```

* Clone the example project:
```bash
git clone https://github.com/SonarSource/sonar-scanning-examples.git example_project
```

* Switch to the example project directory:
```bash
cd example_project/sonarqube-scanner
```

* Run the scanner, passing it the token you created earlier in Section 10:
```bash
sonar-scanner -D sonar.login=your_token_here
```
> This will take a while. Once the scan is complete, you’ll see something like this on the console:
> 
>```
>INFO: Task total time: 14.128 s
>INFO: ------------------------------------------------------------------------
>INFO: EXECUTION SUCCESS
>INFO: ------------------------------------------------------------------------
>INFO: Total time: 21.776s
>INFO: Final Memory: 17M/130M
>INFO: ------------------------------------------------------------------------
>``` 
>The example project’s report will now be on the SonarQube dashboard like so:
> ![screenshot4](xzmQXIR.png)
> 
> Now that you’ve confirmed that the SonarQube server and scanner works with the test code, you can use SonarQube to analyze your own code.

## 13. Run a Scan on Your Own Code

To have SonarQube analyze your own code, start by transferring your project to the server, or follow Step 6 
to install and configure the SonarQube scanner on your workstation and configure it to point to your 
SonarQube server.

* Then, in your project’s root directory, create a SonarQube configuration file:
```bash
nano sonar-project.properties
```
> You’ll use this file to tell SonarQube a few things about your project.
> 
> **Step 1:** First, define a project key, which is a unique ID for the project. You can use anything you’d like, but this ID must be unique for your SonarQube instance:
>```
># Unique ID for this project
>sonar.projectKey=foobar:hello-world
>```
>
> **Step 2:** Then, specify the project name and version so that SonarQube will display this information in the dashboard:
>```bash
>sonar.projectName=Hello World Project
>sonar.projectVersion=1.0
>``` 
>
> **Step 3:** Finally, tell SonarQube where to look for the code files. Note that this is relative to the directory in which the configuration file resides. Set it to the current directory:
>```bash
># Path is relative to the sonar-project.properties file. Replace "\" by "/" on Windows.
>sonar.sources=.
>``` 
>
> **Step 4:** Close and save the file.

* You’re ready to run a code quality analysis on your own code. Run sonar-scanner again, passing it your token:
```bash
sonar-scanner -D sonar.login=your_token_here
```
> Once the scan is complete, you’ll see a summary screen similar to this:
>```bash
>INFO: Task total time: 5.417 s
>INFO: ------------------------------------------------------------------------
>INFO: EXECUTION SUCCESS
>INFO: ------------------------------------------------------------------------
>INFO: Total time: 9.659s
>INFO: Final Memory: 39M/112M
>INFO: ------------------------------------------------------------------------
>``` 

----

##  Scanning a Project Using Maven

To scan a Maven project with SonarQube, follow these steps:

### Add SonarQube Plugin to `pom.xml`
```xml
<build>
  <plugins>
    <plugin>
      <groupId>org.sonarsource.scanner.maven</groupId>
      <artifactId>sonar-maven-plugin</artifactId>
      <version>3.9.1.2184</version>
    </plugin>
  </plugins>
</build>
```

### Run SonarQube Scan
```bash
mvn clean verify sonar:sonar \
  -Dsonar.projectKey=my-project \
  -Dsonar.host.url=http://localhost:9000 \
  -Dsonar.login=admin \
  -Dsonar.password=admin
```

---
##  Creating a Quality Gate
A **Quality Gate** is used to enforce code quality standards before merging code.

### Steps to Create a Quality Gate:
1. **Login to SonarQube UI** at `http://localhost:9000`.
2. Go to **Quality Gates** section.
3. Click **Create** and provide a name (e.g., `MyQualityGate`).
4. Add conditions such as:
   - **Bugs > 0** → Fails the build if any bug is found.
   - **Coverage < 80%** → Requires at least 80% code coverage.
   - **Code Smells > 10** → Ensures maintainability.
5. Click **Save** and apply it to your project.

### Enforcing the Quality Gate:
Once a Quality Gate is applied, the build will fail if the criteria are not met.

---
 ## 🎯  Integrating SonarQube with Jenkins

## 1. Introduction
Integrating SonarQube with Jenkins allows continuous code quality analysis in CI/CD pipelines. This integration ensures that code is analyzed for bugs, vulnerabilities, and code smells before deployment.

---
## 2. Setting Up SonarQube in Jenkins

### 2.1 Install SonarQube Scanner Plugin
1. Navigate to **Jenkins Dashboard** → **Manage Jenkins** → **Manage Plugins**.
2. Go to the **Available** tab and search for **SonarQube Scanner**.
3. Install the plugin and restart Jenkins.

### 2.2 Configure SonarQube in Jenkins
1. Go to **Manage Jenkins** → **Configure System**.
2. Find the **SonarQube Servers** section.
3. Click **Add SonarQube** and provide:
   - **Name:** `SonarQube`
   - **Server URL:** `http://your-sonarqube-server:9000`
   - **Authentication Token:** (Generate from SonarQube under **Security** → **Tokens**)
4. Click **Save**.

### 2.3 Configure SonarQube Scanner
1. Go to **Manage Jenkins** → **Global Tool Configuration**.
2. Find **SonarQube Scanner** and click **Add SonarQube Scanner**.
3. Provide a name and install it automatically or specify a manual installation.
4. Click **Save**.

---
## 3. Adding a Test Stage in Jenkins Pipeline
To ensure code quality, add a test stage in the Jenkins pipeline.

### Sample `Jenkinsfile`
```groovy
pipeline {
    agent any 

    stages {
        stage('Pull') { 
            steps {
                git url: 'https://github.com/rajatpzade/studentapp.ui.git'
            }
        }

        stage('Build') { 
            steps {
                sh '/opt/maven/bin/mvn clean package'
            }
        }        

        stage('Test') { 
            steps {
                script {
                    withSonarQubeEnv(credentialsId: 'sonar') {
                        sh '/opt/maven/bin/mvn clean verify sonar:sonar'
                    }
                }
            }
        }

        stage('Deploy') { 
            steps {
                sh 'echo Deploy stage successfully run' 
            }
        }
    }
}

```

---
## 4. Creating a Webhook in SonarQube for Quality Gate Wait
Webhooks in SonarQube notify Jenkins when code analysis is complete.

### 4.1 Create a Webhook in SonarQube
1. Navigate to **SonarQube Dashboard** → **Administration** → **Webhooks**.
2. Click **Create** and provide:
   - **Name:** `Jenkins Quality Gate`
   - **URL:** `http://your-jenkins-server/sonarqube-webhook/`
3. Click **Save**.

### 4.2 Configure Webhook Handling in Jenkins
Ensure the **waitForQualityGate** step is included in your Jenkins pipeline to wait for SonarQube analysis results.

---
## 🎯 Conclusion
Integrating SonarQube with Jenkins enhances code quality monitoring. The test stage ensures early detection of issues, and webhooks automate feedback loops for quality gate enforcement. This setup strengthens CI/CD pipelines with continuous code analysis.




