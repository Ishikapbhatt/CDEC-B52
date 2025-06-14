# 📊 Prometheus and Grafana Setup & Practical Guide

## 📌 Introduction
Prometheus and Grafana are powerful open-source monitoring tools used to collect, visualize, and analyze metrics in cloud-native environments.

- **Prometheus**: A monitoring and alerting toolkit designed for reliability and scalability.
- **Grafana**: A visualization platform that integrates with Prometheus to create dashboards and alerts.

---

## ⚙️ Setting Up Prometheus

### 🏗️ Step 1: Install Prometheus on Linux Server
```sh
# Update packages and install necessary dependencies
sudo apt update && sudo apt install -y wget tar

# Download Prometheus
wget https://github.com/prometheus/prometheus/releases/latest/download/prometheus-linux-amd64.tar.gz

# Extract the files
tar xvf prometheus-linux-amd64.tar.gz
cd prometheus-linux-amd64

# Move binaries to /usr/local/bin
sudo mv prometheus promtool /usr/local/bin/
```

### 🔧 Step 2: Configure Prometheus

1. Create a new Prometheus configuration file:
   ```sh
   sudo nano /etc/prometheus/prometheus.yml
   ```

2. Add the following configuration:
   ```yaml
   global:
     scrape_interval: 15s

   scrape_configs:
     - job_name: 'prometheus'
       static_configs:
         - targets: ['localhost:9090']
   ```

3. Start Prometheus service:
   ```sh
   nohup prometheus --config.file=/etc/prometheus/prometheus.yml &
   ```

4. Access Prometheus UI: **http://<server-ip>:9090**

---

## 📉 Setting Up Grafana

### 🏗️ Step 1: Install Grafana
```sh
# Add Grafana APT repository
sudo apt update && sudo apt install -y software-properties-common
wget -q -O - https://packages.grafana.com/gpg.key | sudo apt-key add -
echo "deb https://packages.grafana.com/oss/deb stable main" | sudo tee -a /etc/apt/sources.list.d/grafana.list

# Install Grafana
sudo apt update && sudo apt install -y grafana
```

### 🔧 Step 2: Start and Enable Grafana Service
```sh
sudo systemctl start grafana-server
sudo systemctl enable grafana-server
```

### 🌐 Step 3: Access Grafana
- Open browser and go to **http://<server-ip>:3000**
- Default login:
  - Username: `admin`
  - Password: `admin` (change upon first login)

---

## 🔗 Connecting Prometheus to Grafana

### 📡 Step 1: Add Prometheus as a Data Source in Grafana
1. Go to **Settings > Data Sources**
2. Click **Add Data Source**
3. Select **Prometheus**
4. Set URL to `http://<server-ip>:9090`
5. Click **Save & Test**

### 📊 Step 2: Create a Dashboard
1. Navigate to **Dashboards > New Dashboard**
2. Click **Add a new panel**
3. Enter PromQL query (e.g., `node_cpu_seconds_total`)
4. Click **Apply**

---

## 🛠️ Practical Hands-On: Monitoring a Node Exporter

### 📌 Step 1: Install Node Exporter
```sh
# Download and extract Node Exporter
wget https://github.com/prometheus/node_exporter/releases/latest/download/node_exporter-linux-amd64.tar.gz
tar xvf node_exporter-linux-amd64.tar.gz
cd node_exporter-linux-amd64

# Move binary to /usr/local/bin
sudo mv node_exporter /usr/local/bin/
```

### 📌 Step 2: Start Node Exporter
```sh
nohup node_exporter &
```

### 📌 Step 3: Add Node Exporter to Prometheus
1. Open Prometheus configuration:
   ```sh
   sudo nano /etc/prometheus/prometheus.yml
   ```
2. Add the following under `scrape_configs`:
   ```yaml
     - job_name: 'node_exporter'
       static_configs:
         - targets: ['localhost:9100']
   ```
3. Restart Prometheus:
   ```sh
   sudo systemctl restart prometheus
   ```

4. Verify metrics at: **http://<server-ip>:9100/metrics**

---

## 📊 Practical Dashboard in Grafana

### 📌 Step 1: Import a Prebuilt Dashboard
1. Go to **Dashboards > Import**
2. Enter dashboard ID **1860** (Node Exporter Full)
3. Select Prometheus as the data source
4. Click **Import**

---

## 🔄 Prometheus vs. Grafana

| Feature         | Prometheus            | Grafana             |
|----------------|----------------------|---------------------|
| Purpose        | Metrics Collection & Storage | Data Visualization |
| Data Model     | Time-Series Database  | Dashboard & Charts  |
| Alerting       | Built-in Alert Manager | Uses Prometheus data |
| Storage        | Local TSDB, Remote Storage | No storage, depends on sources |

---

## 🎯 Conclusion
This guide provided a hands-on approach to setting up **Prometheus and Grafana** for monitoring infrastructure. By implementing **Node Exporter**, students can monitor Linux hosts, visualize key metrics, and build custom dashboards.

🚀 **Next Steps:** Explore more exporters like **cAdvisor for Docker** and **Kube-State-Metrics for Kubernetes monitoring**.

Happy Monitoring! 🎯
