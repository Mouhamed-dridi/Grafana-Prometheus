# create file called 
touch prometheus.yml

#copy config file from permethose.yml and add config to file 
nano prometheus.yml

# use same network that use in nodexoprt network



docker run -d --name prometheus-docker -p 9090:9090 --mount type=bind,source=$PWD/prometheus.yml,target=/etc/prometheus/prometheus.yml --network 	ndeexport_default prom/prometheus