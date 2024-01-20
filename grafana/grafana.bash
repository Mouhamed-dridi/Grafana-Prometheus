# create docker volume that use with grafana
sudo docker  volume create grafana_data

# use the same newtrk that use with nodeexpesrt and permethose
ndeexport_default


# run docker 
docker run -d --name grafana-docker -p 3000:3000 -v grafana_data:/var/lib/grafana --network ndeexport_default grafana/grafana