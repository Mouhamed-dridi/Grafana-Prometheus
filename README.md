# 🚀 Monitoring Lab Project Description 🚀

Welcome to our Monitoring Lab! 🖥️📊 This project leverages powerful tools to ensure a robust understanding of our system's health and performance.


### How its work 
Prometheus gathers data about your systems, Node Exporter gives details about each machine, and Grafana helps you see and understand this information through easy-to-read dashboards.

### 1 Node Export
 If you're using Portainer to manage your Docker stacks and want to use Node Exporter with a configuration file, you can follow these steps. I'll provide a simple Docker Compose configuration for Node Exporter along with a custom configuration 

 ### 2 intsall Prometheus
 firts use  same network that use with node export and create also a volume prometheus_data
```
sudo docker volume create prometheus_data
```
A.install the prometheus and run use http://YOUR_IP:9090/
B.go to the satate thene target to check node_exporter
```
docker run -d --name prometheus-docker -p 9090:9090 --mount type=bind,source=$PWD/prometheus.yml,target=/etc/prometheus/prometheus.yml --network 	ndeexport_default prom/prometheus
```


### 3 install the Grafana  Dashboard
A.Create the grafana volume 
```
sudo docker volume create grafana_data
 ```
B.use the same network that use with permihose and node export  
C.Run the grafana config 
```
docker run -d --name grafana-docker -p 3000:3000 -v grafana_data:/var/lib/grafana --network ndeexport_default grafana/grafana
```
### install and upload a dashbard 
1. go to the" Add data source"
2. choose prometheus and add the prometheus link "http://YOUR_IP:9090/" and click save and test
3. Create your first dashboard and go to the uploade & add the id "1860" id of the dashbard can get more teample dashbaord frrom this "https://grafana.com/grafana/dashboards/1860-node-exporter-full/"
   
