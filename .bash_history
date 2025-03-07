kubectl create ns elk
helm install es-kb-quickstart elastic/eck-stack -n elk
snap install helm
sudo snap install helm
wget https://get.helm.sh/helm-v3.17.0-linux-amd64.tar.gz
tar -zxvf helm-v3.17.0-linux-amd64.tar.gz 
sudo mv linux-amd64/helm /usr/local/bin/helm
helm
helm install es-kb-quickstart elastic/eck-stack -n elk
helm repo add elastic https://helm.elastic.co
helm repo update
helm install es-kb-quickstart elastic/eck-stack -n elk
helm install es-kb-quickstart elastic/eck-stack -n elastic-stack --create-namespace
# Install an eck-managed Elasticsearch and Kibana using the default values, which deploys the quickstart examples.
helm install es-kb-quickstart elastic/eck-stack -n elastic-stack --create-namespace
kubectl get po -A
kubectl apply -f https://download.elastic.co/downloads/eck/2.8.0/crds.yaml
kubectl apply -f https://download.elastic.co/downloads/eck/2.8.0/operator.yaml
kubectl -n elastic-system get pods
kubectl get crds | grep -E "elasticsearch|kibana"
helm install es-kb-quickstart elastic/eck-stack -n elastic-stack --create-namespace
helm ls -n elastic-stack
k get po -n elastic-stack
kubectl get po -n elastic-stack
kubectl -n elastic-stack
kubectl -n elastic-stack get po

kubectl -n elastic-stack get po
kubectl get cm -n elastic-stack
kubectl get secret -n elastic-stack
history
helm install logstash elastic/logstash -n elastic-stack --create-namespace
kubectl get po -n elastic-stack
kubectl -n elastic-stack get pods
k get po
kubectl -n elastic-stack get pods
kubectl logs -f logstash-logstash-0 -n elastic-stack
kubectl -n elastic-stack get services
kubectl -n elastic-stack get ep
kubectl -n elastic-stack get cm
kubectl -n elastic-stack get secret
kubectl -n elastic-stack get sts
kubectl edit sts logstash-logstash -n elastic-stack
kubectl -n elastic-stack get cm
kubectl -n elastic-stack get secret
kubectl -n elastic-stack get secret | grep log
kubectl -n elastic-stack get cm | grep log
kubectl -n elastic-stack get svc
kubectl -n elastic-stack get svc elasticsearch-es-internal-http -oyaml
kubectl -n elastic-stack get svc elasticsearch-es-internal-http -oyaml > elastic-svc.yaml
vi elastic-svc.yaml
kubectl create -f elastic-svc.yaml
kubectl -n elastic-stack get svc
kubectl -n elastic-stack get ep
kubectl -n elastic-stack get po
kubectl -n elastic-stack delete po logstash-logstash-0
kubectl -n elastic-stack get po
kubectl logs -f logstash-logstash-0 -n elastic-stack
kubectl -n elastic-stack get po
kubectl -n elastic-stack get po -w
kubectl logs -f logstash-logstash-0 -n elastic-stack
kubectl -n elastic-stack get svc
kubectl -n elastic-stack get svc | grep elasticsearch
kubectl -n elastic-stack create deploy ubuntu --image ubuntu:22.04 -- sleep infinity
kubectl -n elastic-stack get po
kubectl -n po exec -it ubuntu-77d66c7848-b4m2f bash
kubectl -n elastic-stack exec -it ubuntu-77d66c7848-b4m2f bash
kubectl exec -it ubuntu-77d66c7848-b4m2f
kubectl exec -it ubuntu-77d66c7848-b4m2f bash
kubectl -n elastic-stack exec -it ubuntu-77d66c7848-b4m2f -- bash
kubectl logs -f logstash-logstash-0 -n elastic-stack
kubectl -n elastic-stack get po
kubectl exec -it logstash-logstash-0 -n elastic-stack -- curl -X GET http://elasticsearch:9200
kubectl exec -it logstash-logstash-0 -n elastic-stack -- curl -X GET http://elasticsearch:9200/_cluster/health
kubectl -n elastic-stack get po
kubectl exec -it elasticsearch-es-default-0 -n elastic-stack -- curl -X GET http://localhost:9200/_cluster/health
kubectl exec -it elasticsearch-es-default-0 -n elastic-stack -- bash
kubectl edit sts elasticsearch-es-default -n elastic-stack 
kubectl exec -it elasticsearch-es-default-0 -n elastic-stack -- bash
kubectl -n elastic-stack get cm
k get cm elasticsearch-es-scripts -n elastic-stack -oyaml
kubectl get cm elasticsearch-es-scripts -n elastic-stack -oyaml
k get secret elasticsearch-es-scripts -n elastic-stack -oyaml
k get secret -n elastic-stack
kubectl get secret -n elastic-stack
kubectl get secret elasticsearch-es-elastic-user -n elastic-stack
kubectl get secret elasticsearch-es-elastic-user -n elastic-stack -oyaml
echo c3hMZzMzTllRRW82NDg5MUpRQk82MnYx | base64 -d
k get po -n elastic-stack
kubectl get po -n elastic-stack
kubectl logs -f logstash-logstash-0 -n  elastic-stack
kubectl get pods -n elastic-stack
helm ls -n  elastic-stack
helm uninstall logstash
helm uninstall logstash -n elastic-stack
kubectl get pods -n elastic-stack
kubectl describe pod elasticsearch-es-default-0 -n elastic-stack
kubectl get svc -n elastic-stack
curl http://localhost:9200
kubectl port-forward pod/elasticsearch-es-default-0 9200:9200 -n elastic-stack
docker pull elasticsearch:7.17.9
docker pull thehiveproject/thehive:latest
docker run -d --name elasticsearch -p 9200:9200 -e "discovery.type=single-node" -e "ES_JAVA_OPTS=-Xms512m -Xmx512m" elasticsearch:7.17.9
docker run -d --name thehive -p 9000:9000 --link elasticsearch:elasticsearch -e "AUTH_TYPE=local" thehiveproject/thehive:latest
curl -X POST "http://localhost:9000/api/v1/case" -H "Authorization: Bearer ivtyQT+U4fOMl+tg5gFoxpGZjXcwyylb" -H "Content-Type: application/json" -d '{
  "title": "Unauthorized Access Attempt Detected",
  "description": "An unauthorized access attempt was detected on the network firewall. The source IP address belongs to a suspicious range, and the attempt was blocked by the security system. This needs further investigation to identify the intent and prevent recurrence.",
  "severity": 3,
  "tags": ["unauthorized_access", "network_security", "firewall_alert"],
  "tlp": 2,
  "pap": 2,
  "tasks": [
    {
      "title": "Gather Logs",
      "description": "Collect logs from the firewall and any affected systems for the specific time range."
    },
    {
      "title": "Analyze the Source",
      "description": "Investigate the source IP address and check for its reputation."
    },
    {
      "title": "Check for Indicators of Compromise (IoC)",
      "description": "Look for any signs of compromise on affected systems."
    },
    {
      "title": "Notify Relevant Teams",
      "description": "Inform the SOC team and management about the incident."
    },
    {
      "title": "Mitigation Steps",
      "description": "Implement measures to prevent similar incidents, such as IP blocking or stricter rules."
    },
    {
      "title": "Write an Incident Report",
      "description": "Summarize findings and actions taken in an incident report."
    }
  ]
}'
sudo apt update && sudo apt upgrade -y
sudo apt install openjdk-11-jdk -y
mkdir ~/thehive_project
cd ~/thehive_project
mkdir -p configs logs backups incidents scripts observables reports
ls
tree ~/thehive_project
sudo snap install tree
tree ~/thehive_project
sudo apt install openjdk-11-jdk -y
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-7.x.list
sudo apt update
sudo apt install elasticsearch -y
sudo nano /etc/elasticsearch/elasticsearch.yml
cd ~/thehive_project
sudo nano /etc/elasticsearch/elasticsearch.yml
sudo systemctl start elasticsearch
sudo systemctl enable elasticsearch
wget https://download.thehive-project.org/thehive-latest.deb
sudo dpkg -i thehive-latest.deb
sudo apt-get install -f
sudo nano /etc/thehive/application.conf
dpkg -l | grep thehive
ls /etc/thehive/
wget https://download.thehive-project.org/thehive-latest.deb
sudo dpkg -i thehive-latest.deb
sudo apt-get install -f
ls /etc/thehive/
wget https://github.com/TheHive-Project/TheHive/releases/download/4.1.24/thehive_4.1.24-1_all.deb
sudo dpkg -i thehive_4.1.24-1_all.deb
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
sudo sh -c 'echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" > /etc/apt/sources.list.d/elastic-7.x.list'
sudo apt update
sudo apt install elasticsearch
sudo service elasticsearch start
curl -X GET "localhost:9200/"
echo "deb https://dl.bintray.com/thehive-project/debian stable main" | sudo tee -a /etc/apt/sources.list.d/thehive.list
wget -qO - https://dl.bintray.com/thehive-project/keys/thehive.asc | sudo apt-key add -
echo "deb https://dl.bintray.com/thehive-project/debian stable main" | sudo tee -a /etc/apt/sources.list.d/thehive.list
wget -qO - https://dl.bintray.com/thehive-project/keys/thehive.asc | sudo apt-key add -
curl -fsSL https://dl.bintray.com/thehive-project/keys/thehive.asc | sudo tee /etc/apt/trusted.gpg.d/thehive.asc
cd C:\Users\mahosny\Downloads\TheHive-4.1.24\bin
cd
cd /mnt/c/Users/mahosny/Downloads/TheHive-4.1.24/bin
cd /mnt/c/Users/mahosny/Downloads/TheHive-4.1.24/TheHive-4.1.24/bin
ls /mnt/c/Users/mahosny/Downloads/
ls /mnt/c/Users/mahosny/Downloads/TheHive-4.1.24/
ls /mnt/c/Users/mahosny/Downloads/TheHive-4.1.24/TheHive-4.1.24/
ls /mnt/c/Users/mahosny/Downloads/TheHive-4.1.24/
cd /mnt/c/Users/mahosny/Downloads/TheHive-4.1.24/TheHive-4.1.24
sbt compile
sbt run
http://localhost:9000
sudo dpkg -i thehive_4.1.24-1_all.deb
python3 --version  # Vérifie la version de Python (doit être >= 3.8)
node -v            # Vérifie la version de Node.js
npm -v             # Vérifie la version de npm
sudo apt update && sudo apt install -y nodejs npm
python3 --version  # Vérifie la version de Python (doit être >= 3.8)
node -v            # Vérifie la version de Node.js
npm -v             # Vérifie la version de npm
sudo apt update && sudo apt install -y nodejs npm
sudo rm /etc/apt/sources.list.d/thehive.list
sudo apt update
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo tee /etc/apt/keyrings/elastic.asc
echo "deb [signed-by=/etc/apt/keyrings/elastic.asc] https://artifacts.elastic.co/packages/7.x/apt stable main" | sudo tee /etc/apt/sources.list.d/elastic-7.x.list
sudo apt update
cat /etc/apt/sources.list.d/thehive.list
sudo apt update && sudo apt install -y nodejs npm
python3 --version  # Vérifie la version de Python (doit être >= 3.8)
node -v            # Vérifie la version de Node.js
npm -v             # Vérifie la version de npm
sudo apt remove -y nodejs npm
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt install -y nodejs
node -v
npm -v
sudo apt remove --purge nodejs libnode-dev -y
sudo apt autoremove -y
which node
which npm
sudo apt remove --purge nodejs libnode-dev -y
sudo apt autoremove -y
sudo rm -rf /usr/local/lib/node_modules
sudo rm -rf ~/.npm
which node
which npm
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt install -y nodejs
node -v
npm -v
file $(which npm)
file /usr/lib/node_modules/npm/bin/npm-cli.js
sudo dos2unix /usr/lib/node_modules/npm/bin/npm-cli.js
sudo apt-get update
sudo apt-get install dos2unix
sudo dos2unix /usr/lib/node_modules/npm/bin/npm-cli.js
file /usr/lib/node_modules/npm/bin/npm-cli.js
npm -v
sudo apt update && sudo apt install -y npm
npm -v
sudo dos2unix /usr/bin/env
sudo apt-get clean
sudo apt-get update
sudo apt-get install -f
npm -v
sudo nano /usr/bin/env
file /usr/bin/npm
sudo dos2unix /usr/bin/npm
file /usr/lib/node_modules/npm/bin/npm-cli.js
sudo apt install npm
sudo apt --fix-broken install
sudo apt update
sudo apt upgrade
sudo apt remove --purge nodejs npm
sudo rm -rf /usr/lib/node_modules
sudo rm -rf ~/.npm
curl -fsSL https://deb.nodesource.com/setup_22.x | sudo -E bash -
sudo apt install -y nodejs
node -v
npm -v
cd ~  # Se placer dans ton répertoire utilisateur
git clone https://github.com/jupyterhub/jupyterhub.git
cd jupyterhub
git clone https://github.com/jupyterhub/jupyterhub.git
cd ~/jupyterhub
ls
python3 -m venv jupyterhub-env
source jupyterhub-env/bin/activate  # Activer l'environnement
sudo apt update
sudo apt install python3.10-venv
python3 -m venv jupyterhub-env
source jupyterhub-env/bin/activate
pip install --upgrade pip
pip install jupyterhub notebook
npm install -g configurable-http-proxy
jupyterhub --generate-config
jupyterhub
sudo apt update
sudo apt install nodejs
sudo apt install npm
sudo npm install -g configurable-http-proxy
jupyterhub
sudo adduser user 
sudo passwd user 
jupyterhub
FROM quay.io/jupyterhub/jupyterhub:latest
RUN pip install jupyterlab
mkdir Dockerfile
ls
nano Dockerfile 
pwd
docker build -t jupyterhub-custom .
docker run -p 8000:8000 -d --name jupyterhub jupyterhub-custom
docker-compose up -d
ls
mkdir docker-compose.yml
ls
nano docker-compose.yml
wsl --install
wsl --set-default-version 2
sudo apt update && sudo apt upgrade -y
sudo apt install -y ca-certificates curl gnupg
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo tee /etc/apt/keyrings/docker.asc > /dev/null
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin
sudo usermod -aG docker $USER
docker --version
docker run hello-world
mkdir ~/thehive && cd ~/thehive
nano docker-compose.yml
nano .env
mkdir -p vol/nginx vol/ssl vol/nginx-logs vol/cassandra/data vol/elasticsearch/data vol/elasticsearch/logs vol/thehive/data vol/cortex/jobs
touch vol/nginx/ssl.conf vol/nginx/thehive.conf vol/nginx/cortex.conf
docker-compose up -d
docker network create proxy
docker-compose up -d
docker ps
docker ps -a
docker start thehive elasticsearch
docker rm -f elasticsearch
docker rm -f thehive
docker-compose up -d
docker-compose down
docker system prune -af --volumes
docker-compose up -d
docker network create proxy
docker-compose up -d
docker network ls
docker ps
docker logs -f thehive
docker start thehive
docker ps
docker exec -it elasticsearch /bin/bash
curl -X POST 'http://localhost:9000/api/v1/user' -H 'Content-Type: application/json' -d '{
  "login": "admin",
  "password": "admin",
  "name": "Administrator",
  "roles": ["admin"]
}'
docker exec -it thehive-mongo /bin/bash
mongo
docker restart thehive
docker ps
docker run --name thehive-mongo -d mongo:latest
docker exec -it thehive-mongo /bin/bash
apt-get update
apt-get install -y mongodb-clients
mongo
sudo su
wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -
echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list
sudo apt-get update
sudo apt-get install -y mongodb-org-shell
mongo
echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/5.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-5.0.list
sudo apt-get update
sudo apt-get install -y mongodb-org-shell
mongo
wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get install -y mongodb-org-shell
sudo apt-get install -y mongodb-org
sudo rm /etc/apt/sources.list.d/mongodb-org-*.list
echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/5.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-5.0.list
wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get install -y mongodb-org-shell
mongo
sudo apt-get install -y mongodb-org
wget https://downloads.mongodb.org/linux/mongodb-org-5.0.5-amd64.deb
sudo dpkg -i mongodb-org-5.0.5-amd64.deb
sudo rm /etc/apt/sources.list.d/mongodb-org-5.0.list
wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | sudo tee /etc/apt/trusted.gpg.d/mongodb.asc
sudo sh -c 'echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/5.0 multiverse" > /etc/apt/sources.list.d/mongodb-org-5.0.list'
sudo apt-get update
sudo apt-get install -y mongodb-org
/etc/thehive/application.conf
ls
vol
cd vol
ls
cd
docker ps
docker exec -it thehive bash
nano /etc/thehive/application.conf
find /opt/thehive -name "application.conf"
vi /etc/thehive/application.conf
sudo vi /etc/thehive/application.conf
ls -l /etc/thehive/application.conf
cd ~/thehive
ls -l /etc/thehive/application.conf
docker exec -it thehive find / -name application.conf
amine@TSF-GPQ3HL3-P:~/thehive$ docker exec -it thehive find / -name application.conf
/etc/thehive/application.conf
find: ‘/etc/ssl/private’: Permission denied
find: ‘/root’: Permission denied
find: ‘/proc/tty/driver’: Permission denied
find: ‘/var/cache/apt/archives/partial’: Permission denied
find: ‘/var/cache/ldconfig’: Permission denied
amine@TSF-GPQ3HL3-P:~/thehivevi /etc/thehive/application.conf
docker exec -it thehive bash
vi /etc/thehive/application.conf
ls -l /etc/thehive/application.conf
ls
cd vol/
ls
cd thehive/
ls
ls -l /etc/thehive/application.conf
nano application.conf/
docker exec -it thehive ls -l /etc/thehive/
docker exec -it thehive rm -r /etc/thehive/application.conf
docker exec -it thehive ls -l /etc/thehive/
docker exec -it thehive rm -r /etc/thehive/application.conf
docker exec -it thehive lsof /etc/thehive/application.conf
docker exec -it thehive fuser /etc/thehive/application.conf
docker restart thehive
docker exec -it thehive /bin/bash
exit
echo "deb https://dl.bintray.com/thehive-project/debian-repo/ stable main" | sudo tee -a /etc/apt/sources.list.d/thehive-project.list
cd ~/thehive
echo "deb https://dl.bintray.com/thehive-project/debian-repo/ stable main" | sudo tee -a /etc/apt/sources.list.d/thehive-project.list
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 562CBC1C
sudo apt update && sudo apt install cortex -y
sudo nano /etc/cortex/application.conf
sudo systemctl start cortex
sudo systemctl enable cortex
curl -X GET "http://localhost:9001"
chmod 644 /path/to/cortex/config/cortex.conf
ls
cd vol
ls
cd cortex
ls
cd jobs
ls
cd.. thehive
cd thehive
cd /thehive
cd \thehive
cd ../thehive
ls
cd.. /thehive
cd../thehive
cd ../thehive
cd thehive
cd ~/thehive
docker ps
docker-compose restart
curl -X GET "http://localhost:9001"
docker ps
docker-compose logs cortex
docker-compose logs elasticsearch
docker-compose logs thehive
docker-compose logs nginx
curl -X GET "http://localhost:9001"
docker-compose ps
nano docker-compose.yml
docker-compose restart
nano docker-compose.yml
docker-compose restart
nano docker-compose.yml
docker-compose restart
docker ps
docker-compose ps
cortex          /opt/cortex/entrypoint           Up      0.0.0.0:9001->9001/tcp
docker run -d -p 9001:9001 --name cortex thehiveproject/cortex:latest
docker stop cortex
docker rm cortex
docker run -d -p 9001:9001 --name cortex thehiveproject/cortex:latest
docker run -d -p 9001:9001 --name cortex-new thehiveproject/cortex:latest
docker-compose ps
docker ps
docker-compose restart
docker-compose up -d cortex
docker ps
docker-compose up -d cortex
docker rm -f cortex
docker-compose up -d cortex
docker ps
sudo ufw allow 9001
docker-compose up 
docker ps
docker-compose ps
docker-compose restart
docker-compose ps
docker run -d -p 9042:9042 --name cassandra-new cassandra:3.11
docker-compose ps
jupyterhub
docker-compose up -d 
ls
cd jupyterhub/
docker-compose up -d 
minikube start
jupyterhub
kubectl get pods
kubectl get services
ls
nano jupyterhub_config.py 
nano jupyterhub-env
nano jupyterhub_cookie_secret 
nano jupyterhub_config.py 
kubectl get pods
kubectl get services
minikube stop 
kubectl get services
minikube start
kubectl get services
jupyterhub
systemctl restart jupyterhub
sudo apt install jupyterhub
sudo apt --fix-broken install
sudo apt install jupyterhub
sudo apt install nodejs npm
sudo npm install -g configurable-http-proxy
sudo apt install jupyterhub
node -v
npm -v
sudo npm install -g configurable-http-proxy
pip install jupyterhub
pip install notebook jupyterlab
sudo apt install jupyterhub
sudo apt update
sudo apt install -y python3-pip
pip3 --version
pip3 install --upgrade pip
pip3 install jupyterhub notebook jupyterlab
configurable-http-proxy --version
sudo jupyterhub
pip3 show jupyterhub
export PATH=$HOME/.local/bin:$PATH
jupyterhub
sudo adduser user1
sudo adduser admin
jupyter
jupyterhub
sudo systemctl restart jupyterhub
which jupyterhub
sudo nano /etc/systemd/system/jupyterhub.service
sudo systemctl daemon-reload
sudo systemctl start jupyterhub
sudo systemctl enable jupyterhub
sudo systemctl start jupyterhub
sudo systemctl restart jupyterhub
jupyterhub
sudo chown -R amine:amine /home/amine/.local/lib/python3.10/site-packages/jupyterhub
sudo chmod -R 755 /home/amine/.local/lib/python3.10/site-packages/jupyterhub
jupyterhub
mkdir -p ~/cybersecurity_projects/{thehive_incident,elk_logs,ansible_remediation}
cd ~/cybersecurity_projects
sudo apt update && sudo apt install -y openjdk-11-jdk docker.io docker-compose
sudo rm -f /etc/apt/sources.list.d/thehive-project.list
wget -qO - https://raw.githubusercontent.com/TheHive-Project/TheHive/master/PGP-PUBLIC-KEY | sudo apt-key add -
echo "deb https://dl.thehive-project.org/ stable main" | sudo tee /etc/apt/sources.list.d/thehive-project.list
sudo apt update
sudo apt install -y openjdk-11-jdk docker.io docker-compose
sudo rm -f /etc/apt/sources.list.d/thehive-project.list
sudo apt update
dpkg -l | grep containerd
sudo apt remove -y containerd.io containerd
sudo apt install -y docker.io
mkdir -p ~/cybersecurity_projects/thehive && cd ~/cybersecurity_projects/thehive
nano docker-compose.yml
sudo docker-compose up -d
docker ps
systemctl restart cortex
sudo systemctl restart cortex
ls
cd ../cy
cd ../cybersecurity_projects
cd /cybersecurity_projects
cd
ls ~
cd ~/cybersecurity_projects
systemctl restart cortex
ls /etc/systemd/system/ | grep cort
systemctl list-units --type=service | grep cortex
sudo apt update && sudo apt install -y openjdk-11-jdk docker.io docker-compose
docker ps | grep thehive
docker ps | grep cortex
docker logs thehive
docker logs cortex
docker logs -f cortex
docker ps | grep cortex
sudo apt install -y curl apt-transport-https
curl -fsSL https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" | sudo tee /etc/apt/sources.list.d/elastic-7.x.list
sudo apt update
cd ~/cybersecurity_projects/elk_logs
sudo apt install -y elasticsearch logstash kibana
dpkg -l | grep elasticsearch
dpkg -l | grep logstash
dpkg -l | grep kibana
sudo nano /etc/elasticsearch/elasticsearch.yml
sudo nano /etc/logstash/logstash.yml
sudo systemctl start elasticsearch
sudo systemctl enable elasticsearch
sudo systemctl start logstash
sudo systemctl enable logstash
sudo systemctl start kibana
sudo systemctl enable kibana
sudo apt install docker-compose -y
nano docker-compose.yml
mkdir -p logstash/config
nano logstash/config/logstash.conf
sudo docker-compose up
sudo lsof -i :9200
sudo docker-compose up
nano docker-compose.yml
sudo docker-compose down
sudo docker-compose up
sudo docker-compose down
sudo docker-compose up
cd ~/cybersecurity_projects
docker compose  up --build  thehive
ls 
cd th
cd thehive
ls
docker compose  up --build  thehive
docker logs cortex
docker ps
docker restart cortex
docker restart thehive
sudo systemctl start docker
sudo systemctl status docker
docker ps
cd ~/cybersecurity_projects
ls
cd thehive
ls
cd ~/cybersecurity_projects
cd thehive_incident/
ls
cd ~/cybersecurity_projects
cd thehive
ls
docker ps
cd /etc/thehive
ls
cd /opt/thehive
ls
nano docker-compose.yml 
docker-compose down
docker-compose up -d
docker info
docker-compose --version
sudo systemctl restart docker
docker-compose down
sudo systemctl status docker
docker-compose --version
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose down
cd
ls
cd thehive
ls
cd vol
ls
cd thehive/
ls
nano application.conf/
ls -l /chemin/vers/application.conf
ls -l
rm -r application.conf
nano application.conf
docker-compose down
sudo systemctl restart thehive
cd ~/thehive
sudo systemctl restart thehive
docker-compose down
docker ps
ps aux | grep thehive
docker-compose.yml
docker inspect thehive
docker exec -it thehive /bin/bash
docker inspect thehive
nano /opt/thehive/conf/application.conf
ls /opt/thehive/
cd
ls
cd cybersecurity_projects/
ls
cd thehive
ls /opt/thehive/
docker exec -it thehive /bin/bash
ls
vi /etc/thehive/application.conf
vi application.conf
docker restart thehive
vi application.conf
docker restart thehive
systemctl restart thehive
systemctl restart cortex
sudo systemctl restart thehive
sudo systemctl status thehive
docker ps | grep thehive
docker ps | grep cortex
ps aux | grep -E 'thehive|cortex'
netstat -tulnp | grep -E '9000|9001|9002'
curl -X GET http://localhost:9000
systemctl status elasticsearch
curl -X GET http://localhost:900
curl -X GET http://localhost:9000
sudo systemctl status thehive
sudo systemctl restart thehive
docker ps
docker get services
docker get service
docker get --help
docker ps
docker exec -it thehive cat /etc/thehive/application.conf | grep cortex
docker exec -it thehive nano /etc/thehive/application.conf
ps aux | grep -E 'thehive|cortex'
netstat -tulnp | grep -E '9000|9001|9002'
curl -X GET http://localhost:9001/api/status
docker exec -it thehive /bin/sh
ls /opt/thehive/conf/
docker exec -it thehive /bin/sh
find / -name docker-compose.yml 2>/dev/null
find /opt -name application.conf 2>/dev/null
find /etc -name application.conf 2>/dev/null
find / -name application.conf 2>/dev/null
docker exec -it thehive /bin/sh
docker restart thehive
curl -X GET http://localhost:9001/api/status
docker exec -it thehive /bin/sh
cat /var/log/thehive/thehive.log
curl -X GET http://localhost:9001/api/status
docker restart thehive
docker restart cortex
docker inspect thehive
docker inspect cortex
cd /home/amine/thehive
ls
cd /home/amine/cybersecurity_projects/thehive
ls
docker restart thehive
docker restart cortex
docker restart thehive
cd
docker restart thehive
docker ps
docker-compose up -d
~/cybersecurity_projects/thehive
cd ~/cybersecurity_projects/thehive
docker-compose up -d
ls
docker-compose up -d
docker stop thehive elasticsearch cortex cassandra && docker rm thehive elasticsearch cortex cassandra
cd
docker ps
docker-compose up -d
mkdir -p ~/clous_projet/securiter
cd ~/clous_projet/securiter
nano docker-compose.yml
docker-compose up -d
docker ps -a.
docker ps -a
docker rm 7bcdcf11999d
docker-compose up -d
sudo apt update && sudo apt upgrade -y
sudo apt install openjdk-11-jdk -y
java -version
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
sudo sh -c 'echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" > /etc/apt/sources.list.d/elastic-7.x.list'
sudo apt update && sudo apt install elasticsearch=7.10.2 -y
sudo nano /etc/elasticsearch/elasticsearch.yml
sudo systemctl start elasticsearch
sudo systemctl enable elasticsearch
curl -X GET "localhost:9200/"
# Exemple pour Ubuntu
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-7.x.list
sudo apt-get update && sudo apt-get install elasticsearch
docker run -d --name thehive   -p 9000:9000   -v /path/to/data:/opt/thp_data   thehiveproject/thehive:latest
docker run -d --name thehive   -p 9000:9000   -v /path/to/data:/opt/thp_data   thehiveproject/thehive:latest
docker run -d --name cortex   -p 9001:9001   -v /path/to/data:/opt/cortex_data   thehiveproject/cortex:latest
ls
vi docker-compose.yml 
docker-compose up -d
nano  docker-compose.yml 
dcker ps
docker ps
docker-compose up -d
nano  docker-compose.yml 
docker restar thehive
docker restart thehive
docker restart cortex
docker-compose down
docker-compose up -d
nano  docker-compose.yml 
docker-compose down
docker-compose up -d
nano  docker-compose.yml 
docker-compose down
docker-compose up -d
cd ~/clous_projet
mkdir /ELK
mkdir su /ELK
mkdir ~/ELK
ls
su
mkdir ELK
ls
cd ELK/
nano docker-compose.yml
mkdir -p logstash/pipeline elasticsearch kibana
ls
cd logstash/pipeline
nano logstash.conf
docker-compose up -d
ping google.com
cd ~/clous_projet/ELK
ls
docker-compose up -d
docker ps -a
nano docker-compose.yml 
docker-compose up -d
sudo apt-get update
sudo apt-get install filebeat
/etc/filebeat/filebeat.yml
docker ps
sudo nano /etc/filebeat/filebeat.yml
sudo systemctl enable filebeat
sudo systemctl start filebeat
sudo nano /etc/filebeat/filebeat.yml
filebeat modules list
sudo filebeat setup --dashboards
sudo systemctl start filebeat
sudo systemctl enable filebeat
sudo systemctl status filebeat
docker ps -a | grep kibana
docker logs kibana
curl -X GET "http://localhost:9201/_cluster/health?pretty"
docker logs -f kibana
docker ps
docker exec -it kibana cat /usr/share/kibana/config/kibana.yml
docker exec -it kibana /bin/bash
docker ps
docker restart kibana
docker ps
docker logs kibana
docker exec -it kibana /bin/bash
vi /usr/share/kibana/config/kibana.yml
docker exec -it kibana /bin/bash
docker restart kibana
docker logs kibana
docker restart kibana
docker logs elasticsearch_elk.
docker logs elasticsearch_elk
docker logs kibana
cd ~/clous_projet/
mkdir ansible
ls
cd ansible/
sudo apt update
sudo apt install ansible
nano inventory.ini
touch inventory.ini 
nano inventory.ini
nano remediation_playbook.yml
ansible -i inventory.ini all -m ping
sudo systemctl status ssh
sudo apt-get update
sudo apt-get install openssh-server
ping 192.168.1.10
ping 192.168.1.11
ping 192.168.1.12
VBoxManage controlvm "vm_securite" poweroff
docker ps
docker compose up -d
docker ps
docker compose up -d
cd ~/clous_projet
docker compose up -d
ls
cd securiter/
docker compose up -d
ls
docker restart thehive
docker restart cortex
docker ps
cd ~/clous_projet
ls
cd ELK/
ls
docker compose up -d
docker ps
cd ~/clous_projet
ld
ls
cd ansible/
docker compose up -d
ls
cd ~/clous_projet
cd securiter/
ls
nano docker-compose.yml 
docker restart thehive
docker restart cortex
curl -X GET http://localhost:9001/api/status
nano docker-compose.yml 
docker restart thehive
docker restart cortex
ping 172.0.0.1:9000
127.0.0.1:9000
ping 127.0.0.1:9000
docker stop cortex
docker rm cortex
docker pull thehiveproject/cortex:latest
docker run -d --name cortex -p 9001:9001 -v /etc/cortex:/etc/cortex thehiveproject/cortex:latest
docker ps
docker restart cortex
curl -X GET http://localhost:9001/api/status
docker compose up -d
curl -X GET http://localhost:9001/api/status
docker compose up -d
docker ps -a
docker ps
docker logs cortex
docker ps
sudo systemctl status kibana
sudo systemctl restart kibana
cd ~/clous_projet
cd ELK/
docker restart kibana
curl -X GET http://localhost:5601/api/status
ls
cd elasticsearch/
ls
cd ~/clous_projet/ELK/
docker restart elasticsearch
curl -X GET http://localhost:5601/api/status
curl -X GET http://localhost:9200/_cluster/health?pretty
curl -X GET http://localhost:9201/_cluster/health?pretty
sudo nano /etc/kibana/kibana.yml
docker restart elasticsearch
docker restart kibana
ls
journalctl -u kibana -n 50 --no-pager
sudo lsof -i :5601
sudo netstat -tulnp | grep 5601
ps
ss -tulnp | grep 5601
kill -9 4096
sudo ps aux | grep kibana
sudo kill -9 72884
sudo netstat -tulnp | grep :5601
sudo systemctl stop kibana
ss -tulnp | grep 5601
sudo netstat -p | grep :5601
sudo lsof -i :5601
sudo ss -tulnp | grep 5601
docker restart kibana
ps aux | grep kibana
sudo kill -9 80641
docker stop kibana
docker compose down 
docker compose up -d
docker ps 
curl -X GET http://localhost:9201/_cluster/health?pretty
curl -X GET http://localhost:5601/_cluster/health?pretty
curl -X GET http://localhost:9200/_cluster/health?pretty
curl -X GET http://localhost:5601/_cluster/health?pretty
docker logs kibana
docker exec -it kibana /bin/bash
vi /usr/share/kibana/config/kibana.yml
ls
cd kibana/
ls
ls -a
ls 
cd..
cd ..
ls
cd securiter/
ls
cd vol
ls
cd thehive/
ls
nano application.conf/
sudo nano /etc/kibana/kibana.yml
cd ..
ls
cd ELK/
docker restart elasticsearch_elk
docker restart kibana
curl -X GET http://localhost:920/_cluster/health?pretty
curl -X GET http://localhost:9201/_cluster/health?pretty
curl -X GET http://localhost:5601/_cluster/health?pretty
sudo nano /etc/kibana/kibana.yml
docker restart elasticsearch_elk
docker restart kibana
sudo systemctl restart kibana
curl -X GET http://localhost:5601/_cluster/health?pretty
curl -X GET http://localhost:9201/_cluster/health?pretty
curl -X GET http://localhost:5601/_cluster/health?pretty
docker logs elasticsearch_elk
sudo nano /etc/kibana/kibana.yml
docker restart elasticsearch_elk
docker restart kibana
cd ..
cd securiter/
ls
docker stop elasticsearch
cd ..
cd ELK/
docker restart elasticsearch_elk
docker restart kibana
curl -X GET http://localhost:9200/_cluster/health?pretty
curl -X GET http://localhost:5601/_cluster/health?pretty
curl -X GET http://localhost:9200/_cluster/health?pretty
sudo nano /etc/kibana/kibana.yml
docker restart elasticsearch_elk
docker restart cortex
curl -X GET http://localhost:9201/_cluster/health?pretty
docker logs elasticsearch_elk
docker logs kibana
docker ps | grep elasticsearch
nano docker-compose.yml 
sudo nano /etc/kibana/kibana.yml
docker restart elasticsearch_elk
docker restart kibana
curl -X GET http://localhost:9201/_cluster/health?pretty
curl -X GET http://localhost:5601/_cluster/health?pretty
docker-compose down
docker-compose up -d
curl -X GET http://localhost:9201/_cluster/health?pretty
curl -X GET http://localhost:5601/_cluster/health?pretty
docker ps
docker restart c5939bc1245c
docker stop elasticsearch_elk
docker rm elasticsearch_elk
docker run -d --name elasticsearch_elk -p 9201:9200 -p 9300:9300 docker.elastic.co/elasticsearch/elasticsearch:7.10.1
nano docker-compose.yml 
docker-compose down
docker-compose up -d
docker-compose down
docker compose down
docker  -compose down
docker-compose down
nano docker-compose.yml 
docker-compose down
docker-compose up -d
docker ps -a | grep elasticsearch_elk
docker rm elasticsearch_elk
docker-compose up -d
docker ps
curl -X GET http://localhost:5601/_cluster/health?pretty
curl -X GET http://localhost:9201/_cluster/health?pretty
curl -X GET http://localhost:5601/_cluster/health?pretty
sudo systemctl failbeat
sudo systemctl filebeat
sudo systemctl status filebeat
sudo systemctl restart filebeat
sudo systemctl status filebeat
docker start filebeat
sudo systemctl status filebeat
sudo systemctl restart filebeat
sudo systemctl status filebeat
sudo journalctl -u filebeat.service
sudo nano /etc/filebeat/filebeat.yml
sudo systemctl restart filebeat
sudo systemctl status filebeat
docker ps
sudo systemctl status filebeat
sudo nano /etc/filebeat/filebeat.yml
sudo vim /etc/filebeat/filebeat.yml
sudo nano /etc/filebeat/filebeat.yml
docker logs filebeat
docker restart filebeat
docker compose up -d
docker logs filebeat
docker ps -a | grep filebeat
docker images | grep filebeat
docker pull docker.elastic.co/beats/filebeat:7.10.1
docker run -d --name filebeat   --user=root   --volume="$(pwd)/filebeat.yml:/usr/share/filebeat/filebeat.yml:ro"   --volume="/var/lib/docker/containers:/var/lib/docker/containers:ro"   --volume="/var/run/docker.sock:/var/run/docker.sock:ro"   docker.elastic.co/beats/filebeat:7.10.1
ls -l $(pwd)/filebeat.yml
touch filebeat.yml
ls -ld $(pwd)
ls -l filebeat.yml
sudo chown amine:amine filebeat.yml
chmod u+w filebeat.yml
df -h
sudo touch filebeat.yml
ls -l $(pwd)/filebeat.yml
docker run -d --name filebeat   --user=root   --volume="/etc/filebeat/filebeat.yml:/usr/share/filebeat/filebeat.yml:ro"   --volume="/var/lib/docker/containers:/var/lib/docker/containers:ro"   --volume="/var/run/docker.sock:/var/run/docker.sock:ro"   docker.elastic.co/beats/filebeat:7.10.1
docker run -d --name filebeat   --user=root   --volume="/etc/filebeat/filebeat.yml:/usr/share/filebeat/filebeat.yml:ro"   --volume="/var/lib/docker/containers:/var/lib/docker/containers:ro"   --volume="/var/run/docker.sock:/var/run/docker.sock:ro"   docker.elastic.co/beats/filebeat:7.10.1
docker stop filebeat
docker rm filebeat
docker run -d --name filebeat   --user=root   --volume="/etc/filebeat/filebeat.yml:/usr/share/filebeat/filebeat.yml:ro"   --volume="/var/lib/docker/containers:/var/lib/docker/containers:ro"   --volume="/var/run/docker.sock:/var/run/docker.sock:ro"   docker.elastic.co/beats/filebeat:7.10.1
docker ps
docker rm -f filebeat
docker run -d --name filebeat   --user=root   --volume="/etc/filebeat/filebeat.yml:/usr/share/filebeat/filebeat.yml:ro"   --volume="/var/lib/docker/containers:/var/lib/docker/containers:ro"   --volume="/var/run/docker.sock:/var/run/docker.sock:ro"   docker.elastic.co/beats/filebeat:7.10.1
docker ps
sudo systemclt status filebeat
sudo systemctl status filebeat
sudo systemctl restart filebeat
sudo systemctl stop filebeat
sudo systemctl disable filebeat
docker logs filebeat
docker ps
docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' kibana
docker-compose up -d
cd ..
cd securiter/
docker-compose up -d
docker ps -a
docker logs e950aa41ac28
docker restart elasticsearch
docker logs e950aa41ac28
docker-compose up -d
docker stop cortex
docker rm cortex
docker-compose up -d
docker ps
docker restart thehive
curl -X GET http://localhost:9000/_cluster/health?pretty
docker ps
docker logs 069dd3568d4a
docker ps
docker exec -it 069dd3568d4a bash
apt-get update
apt-get install -y python3-pip
sudo su
docker ps
docker restart 069dd3568d4a
docker logs 069dd3568d4a
docker restart thehive
docker restart cortex
docker-compose down
nano docker-compose.yml 
docker-compose up -d
nano docker-compose.yml 
docker-compose up -d
cd ~cybersecurity_projects\elk_logs
cd ~cybersecurity_projects
cd ~\cybersecurity_projects
cd ~/cybersecurity_projects
ls
cd elk_logs/
ls
cd
~\clous_projet
cd ~\clous_projet
cd ~/clous_projet
ls
cd ELK/
docker-compose up -d
nano docker-compose.yml 
docker-compose down 
docker-compose up -d
ls
cd clous_projet/
ls
cd ansible/
ls
nano inventory.ini 
nano remediation_playbook.yml 
- name: Install Apache2
nano remediation_playbook.yml 

ansible-playbook -i inventory.ini remediation_playbook.yml
nano inventory.ini 
ansible-playbook -i inventory.ini remediation_playbook.yml
nano inventory.ini 
ansible-playbook -i inventory.ini remediation_playbook.yml
ls
nano remediation_playbook.yml 
ansible-playbook -i inventory.ini remediation_playbook.yml
ansible-playbook -i inventory.ini remediation_playbook.yml --ask-become-pass
nameserver 8.8.8.8
nameserver 8.8.4.4
nano /etc/resolv.conf
sudo nano /etc/resolv.conf
ansible-playbook -i inventory.ini remediation_playbook.yml --ask-become-pass
clear
ping archive.ubuntu.com
sudo nano /etc/resolv.conf
sudo systemctl restart networking
ls /etc/netplan/
sudo netplan apply
ls /etc/netplan/
sudo systemctl restart NetworkManager
ansible-playbook -i inventory.ini remediation_playbook.yml --ask-become-pass
clear
ls
nano remediation_playbook.yml 
ping google.com
sudo nano /etc/resolv.conf
ping google.com
ping 8.8.8.8
ls -l ./nginx.conf
clear
ls
nano remediation_playbook.yml 
ansible-playbook -i inventory.ini remediation_playbook.yml --ask-become-pass
nano remediation_playbook.yml 
cd ~\clous_projet
cd clous_projet
ls
cd securiter/
ls
docker ps
docker-compose up -d 
nano docker-compose.yml *
ls
cd 
cd vol
cd clous_projet/
cd securiter/
ls
cd vol
ls
cd thehive 
ls
cd ..
ls
nano docker-compose.yml
docker-compose down 
docker-compose up -d
ps
docker ps
ls
docker-compose down 
docker-compose up -d
cd ..
ls
cd ELK/
docker-compose up -d
cd ..
ls
cd ELK/
ls
nano docker-compose.yml 
ls
docker ps
nano docker-compose.yml 
docker-compose down
docker-compose up -d 
ls
nano nginx.conf
nano docker-compose.yml 
docker-compose up -d 
docker-compose down
docker rm -f nginx
docker-compose up -d
ls -l ./nginx.conf
echo "events { worker_connections 1024; } http { server { listen 80; server_name localhost; location / { proxy_pass http://kibana:5601; } } }" > ./nginx.conf
rm -rf ./nginx.conf
echo "events { worker_connections 1024; } http { server { listen 80; server_name localhost; location / { proxy_pass http://kibana:5601; } } }" > ./nginx.conf
ls -l ./nginx.conf
docker-compose up -d
ls
tree
nano nginx.conf
chmod 644 ./nginx.conf
docker-compose up -d
ip a
sudo lshw -C network
ping 8.8.8.8
sudo lshw -C network
cd ..
ls
cd ..
cd clous_projet/
cd El
cd ELK/
sudo journalctl -u kibana --no-pager | grep "verification code"
docker-compose down
docker-compose up -d 
curl -X GET http://localhost:5601/_cluster/health?pretty
kubectl port-forward svc/monitoring-grafana 3000:80 -n monitoring
sudo apt update && sudo apt install -y curl wget apt-transport-https gnupg2
sudo apt install -y docker.io
sudo usermod -aG docker $USER
newgrp docker
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x kubectl
sudo mv kubectl /usr/local/bin/
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
chmod +x minikube-linux-amd64
sudo mv minikube-linux-amd64 /usr/local/bin/minikube
minikube start --driver=docker
kubectl get nodes
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh
helm version
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update
kubectl create namespace monitoring
helm install monitoring prometheus-community/kube-prometheus-stack -n monitoring
kubectl get pods -n monitoring
kubectl port-forward svc/monitoring-grafana 3000:80 -n monitoring
kubectl get pods -n monitoring
kubectl port-forward svc/monitoring-grafana 3000:80 -n monitoring
kubectl get svc -n monitoring
kubectl get pod -n monitoring -o wide
kubectl describe pod monitoring-grafana-5bbdb58b57-k25qg -n monitoring | grep -i port
kubectl get svc monitoring-grafana -n monitoring -o yaml
kubectl port-forward svc/monitoring-grafana 3000:80 -n monitoring
kubectl get svc -n monitoring
kubectl get po -n kube-system
helm repo add metrics-server https://kubernetes-sigs.github.io/metrics-server/
helm repo update
helm install metrics-server metrics-server/metrics-server -n kube-system --create-namespace
kubectl get pods -n kube-system | grep metrics-server
kubectl get pods -n kube-system | grep metrics-server -w
kubectl get pods -n kube-system | grep metrics-server --watch
kubectl get pods -n kube-system | grep metrics-server
kubectl describe pod metrics-server-85f985c745-tqv2s -n kube-system
kubectl logs metrics-server-85f985c745-tqv2s -n kube-system
helm uninstall metrics-server
helm values list
helm value list
helm list
helm list values
helm ps values
helm ls values
helm get values
helm get 
helm get all
helm get values
helm list -A
helm uninstall metrics-server
helm uninstall metrics-server-3.12.2
helm uninstall metrics-server -n kube-system
helm list -A
nano prometheus-alert-rules.yaml
kubectl apply -f prometheus-alert-rules.yaml -n monitoring
kubectl get prometheusrules -n monitoring
kubectl port-forward svc/monitoring-prometheus 9090 -n monitoring
nano grafana-dashboards-values.yaml
helm upgrade monitoring prometheus-community/kube-prometheus-stack -n monitoring -f grafana-dashboards-values.yaml
kubectl  get svc
minikube service prometheus-server-ext
minikube service list
nano grafana-dashboards-values.yaml
helm upgrade monitoring prometheus-community/kube-prometheus-stack -n monitoring -f grafana-dashboards-values.yaml
kubectl get pods -n monitoring
kubectl get svc -n monitoring
clear 
sudo apt update && sudo apt install -y curl wget apt-transport-https gnupg2
minikube start --driver=docker
docker --version
minikube version
kubectl version --client
minikube status
helm version
kubectl get pods -n monitoring
kubectl port-forward svc/monitoring-grafana 3000:80 -n monitoring
h search repo prometheus
f search repo prometheus
h search repo prometheus
search repo prometheus
helm upgrade monitoring prometheus-community/kube-prometheus-stack -n monitoring -f grafana-dashboards-values.yaml
nano prometheus-alert-rules.yaml
kubectl apply -f prometheus-alert-rules.yaml -n monitoring
kubectl get prometheusrules -n monitoring
kubectl port-forward svc/monitoring-prometheus 9090 -n monitoring
kubectl get svc -n monitoring
kubectl port-forward svc/monitoring-kube-prometheus-prometheus 9090 -n monitoring
minikube 
clear
minikube start --driver=docker
minikube version 
kubectl version --client
helm version
helm repo add prometheus-community
helm repo update
kubectl get pods -n monotoring
kubectl get pods -n monitoring
kubectl port-forward svc/monitoring-grafana 3000:80 -n monitoring
nano prometheus-alert-rules.yaml
kubectl get prometheusrules -n monitoring
kubectl port-forward svc/monitoring-kube-prometheus-prometheus 9090 -n monitoring
nano grafana-dashboards-values.yaml
helm upgrade monitoring prometheus-community/kube-prometheus-stack -n monitoring -f grafana-dashboards-values.yaml
kubectl get nodes
kubectl get prometheusrules -n monitoring
ls
cd jupyterhub/
ls
cd ..
ls
cd jupyterhub
ls
git init
ls 
ls- l
ls -l
ls -a
git clone https://github.com/Lemjidmayssa/jupyterhub.git
ls
cd jupyterhub/
ls
ansible-playbook inventory.ini  playbook.yml 
nano playbook.yml 
sudo update apt-get
sudo apt-get update 
nano inventory.ini 
pwd
cd roles/
ls
cd minikube_check/
ls
nano main.yaml 
cd ..
ansible-playbook -i inventory.ini playbook.yml
ansible-galaxy collection install kubernetes.core
ansible-doc -t module -l | grep k8s
ansible-playbook -i inventory.ini playbook.yml
pip install kubernetes
python3 -c "import kubernetes; print(kubernetes.__version__)"
ansible-playbook -i inventory.ini playbook.yml
pip install --upgrade ansible
ansible-playbook -i inventory.ini playbook.yml
ansible localhost -m setup | grep ansible_python_interpreter
pip3 install kubernetes
python3 -c "import kubernetes; print(kubernetes.__version__)"
ansible-playbook -i inventory.ini playbook.yml
ansible localhost -m setup | grep python
/usr/bin/python3 -c "import kubernetes; print(kubernetes.__version__)"
ansible-playbook -i inventory.ini playbook.yml
ls
nano inventory.ini 
ansible-playbook -i inventory.ini playbook.yml
/usr/bin/python3 -c "import kubernetes; print(kubernetes.__file__)"
echo $PYTHONPATH
export PYTHONPATH=$HOME/.local/lib/python3.10/site-packages:$PYTHONPATH
ansible-playbook -i inventory.ini playbook.yml
PYTHONPATH=$HOME/.local/lib/python3.10/site-packages ansible-playbook -i inventory.ini playbook.yml
ansible localhost -m setup | grep ansible_python_interpreter
ls
cd roles/
ls
cd namespace/
ls
cd tasks/
ls
nano main.yml 
cd ..
ansible -i localhost, -m setup | grep ansible_python_interpreter
ansible -i inventory.ini localhost -m setup | grep ansible_python_interpreter
ansible-playbook -i inventory.ini playbook.yml
pip3 install kubernetes
nano inventory.ini 
ansible-playbook -i inventory.ini playbook.yml
nano inventory.ini 
pip3 install kubernetes
pip install kubernetes
python3 -c "import kubernetes"
nano playbook.yml 
clear
/usr/bin/python3 -c "import kubernetes; print(kubernetes.__version__)"
ls
nano ansible.cfg 
/usr/bin/python3 -c "import kubernetes; print(kubernetes.__version__)"
ansible-playbook  playbook.yml

cd /usr/bin
ls
ansible-playbook  playbook.yml
cd ..
cd jupyterhub
cd ..
cd..
cd ..
exit
netstat -tulnp | grep :25
cd ~/jupyterhub/jupyterhub
kubectl get configmap -n jupyterhub
kubectl get configmap jupyterhub-config -n jupyterhub -o yaml
cd roles/
ls
cd configuration/
ls
cd templates/
ls
nano jupyterhub_config.py.j2 
kubectl get configmap jupyterhub-config -n jupyterhub -o yaml
cat jupyterhub_config.py.j2
ls
nano configmap.yaml 
find ~/jupyterhub -type f -name "jupyterhub-config*"
grep -r "jupyterhub-config" ~/jupyterhub
nano configmap.yaml 
ls
nano jupyterhub_config.py.j2 
nano secret.yaml 
nano configmap.yaml 
nano secret.yaml 
kubectl apply -f configmap.yaml
kubectl delete pod -n jupyterhub -l app=jupyterhub
nano configmap.yaml 
cd ..
kubectl apply -f configmap.yaml
cd roles/configuration/templates/
kubectl apply -f configmap.yaml
kubectl delete pod -n jupyterhub -l app=jupyterhub
kubectl logs -n jupyterhub -l app=jupyterhub
kubectl exec -it -n jupyterhub $(kubectl get pod -n jupyterhub -l app=jupyterhub -o jsonpath='{.items[0].metadata.name}') -- cat /srv/jupyterhub/jupyterhub_config.py
amine@TSF-GPQ3HL3-P:~/jupyterhub/jupyterhub/roles/configuration/templates$ kubectl exec -it -n jupyterhub $(kubectl get pod -n jupyterhub -l app=jupyterhub -o jsonpath='{.items[0].metadata.name}') -- cat /srv/jupyterhub/jupyterhub_config.py
cat: /srv/jupyterhub/jupyterhub_config.py: No such file or directory
command terminated with exit code 1
amine@TSF-GPQ3HL3-P:~/jupyterhub/jupyterhub/roles/configuration/templates$
amine@TSF-GPQ3HL3-P:~/jupyterhub/jupyterhub/roles/configuration/templates$ amine@TSF-GPQ3HL3-P:~/jupyterhub/jupyterhub/roles/configuration/templates$ kubectl exec -it -n jupyterhub $(kubectl get pod -n jupyterhub -l app=jupyterhub -o jsonpath='{.items[0].metadata.name}') -- cat /srv/jupyterhub/jupyterhub_config.py
cat: /srv/jupyterhub/jupyterhub_config.py: No such file or directory
command terminated with exit code 1
amine@TSF-GPQ3HL3-P:~/jupyterhub/jupyterhub/roles/configuration/templates$
-bash: amine@TSF-GPQ3HL3-P:~/jupyterhub/jupyterhub/roles/configuration/templates$: No such file or directory
Command 'cat:' not found, did you mean:
Try: sudo apt install <deb name>
terminated: command not found
-bash: amine@TSF-GPQ3HL3-P:~/jupyterhub/jupyterhub/roles/configuration/templates$: No such file or directory
amine@TSF-GPQ3HL3-P:~/jupyterhub/jupyterhub/roles/configuration/templates$
nano configmap.yaml 
kubectl delete configmap jupyterhub-config -n jupyterhub
kubectl apply -f configmap.yaml
kubectl delete pod -n jupyterhub -l app=jupyterhub
nano configmap.yaml 
kubectl get pods -n jupyterhub
kubectl delete pod jupyterhub-7c64669b4-phhbk -n jupyterhub
sudo adduser user1
sudo adduser admin1
cd ..
sudo adduser user1
sudo adduser admin1
sudo passwd user1
sudo passwd admin1
kubectl logs <nom-du-pod> -n jupyterhub
cd roles/configuration/templates/
ls
nano configmap.yaml 
kubectl get pods -n jupyterhub
kubectl logs jupyterhub-7c64669b4-x2ldt -n jupyterhub
id admin1
id user1
sudo passwd admin1
sudo passwd user1
sudo tail -f /var/log/auth.log
nano configmap.yaml 
kubectl apply -f configmap.yaml -n jupyterhub
kubectl get pods -n jupyterhub
kubectl delete pod jupyterhub-7c64669b4-x2ldt -n jupyterhub
minikube service jupyterhub --url -n jupyterhub
nano configmap.yaml 
kubectl apply -f configmap.yaml -n jupyterhub
kubectl get configmap jupyterhub-config -n jupyterhub -o yaml
kubectl get pods -n jupyterhub
kubectl delete pod jupyterhub-7c64669b4-6v5sr -n jupyterhub
kubectl get pods -n jupyterhub
cd ..
ls
cd ..
ls
cd ..
ls
cd jupyterhub
ls
cd jupyterhub/
ls
git status
git add .
git commit -m "Ajout du projet JupyterHub"
git config --global user.email "Mohamed_Amine_HOSNY@hotmail.com"
git config --global user.name "Amine"
git config --global --list
git commit -m "Ajout du projet JupyterHub"
git remote -v
git remote add origin https://github.com/hitmanamine/jupyterhub.git
git remote -v
git init
git config --global user.email "Mohamed_Amine_HOSNY@hotmail.com"
git config --global user.name "Amine"
git remote add origin https://github.com/hitmanamine/jupyterhub.git
git remote -v
git remote remove origin
git remote -v
git remote add origin https://github.com/hitmanamine/jupyterhub.git
git remote -v
git add .
git commit -m "Ajout du projet JupyterHub"
git branch -M main
git push -u origin main
git branch -M main
git push -u origin main
cd jupyterhub
cd jupyterhub/
ansible-playbook  playbook.yml
sudo ansible-playbook playbook.yml
ls
cd roles/
cd namespace/
minikube status
kubectl get pod
cd tasks/
nano main.yml 
ansible-galaxy collection list | grep kubernetes
cd ..
ansible-config dump | grep COLLECTIONS_PATHS
amine@TSF-GPQ3HL3-P:~/jupyterhub/jupyterhub$ ansible-config dump | grep COLLECTIONS_PATHS
COLLECTIONS_PATHS(default) = ['/home/amine/.ansible/collections', '/usr/share/ansible/collections']
amine@TSF-GPQ3HL3-P:~/jupyterhub/jupyterhub$
ansible-doc -t module -l | grep kubernetes.core.k8s
ls ~/.ansible/collections/ansible_collections/kubernetes/core/plugins/modules/
nano playbook.yml 
ansible localhost -m setup | grep ansible_python_interpreter
nano inventory.ini 
ansible -i inventory.ini localhost -m setup | grep ansible_python_interpreter
ansible-playbook -i inventory.ini playbook.yml
sudo /usr/bin/python3 -m pip install kubernetes
/usr/bin/python3 -c "import kubernetes; print(kubernetes.__version__)"
ansible-playbook -i inventory.ini playbook.yml
kubectl get nodes
minikube start
ansible-playbook -i inventory.ini playbook.yml
kubectl config use-context minikube
ansible-playbook -i inventory.ini playbook.yml
nano inventory.ini 
ansible-playbook -i inventory.ini playbook.yml
ls ~/.kube/config
cat ~/.kube/config
ls -l ~/.kube/config
ansible-playbook -i inventory.ini playbook.yml
kubectl version --client
kubectl get nodes
ls ~/.kube/config
cat ~/.kube/config
kubectl config current-context
ls /home/amine/.minikube/profiles/minikube/client.crt
ls /home/amine/.minikube/profiles/minikube/client.key
nano test_k8s.yml
ansible-playbook -i inventory.ini test_k8s.yml
ansible-playbook -i inventory.ini playbook.yml
ls
nano playbook.yml 
ansible-playbook -i inventory.ini playbook.yml
ansible-playbook  playbook.yml
ls
cd roles/
ls
cd namespace/tasks/
cd
cd ~/jupyterhub/jupyterhub/roles/namespace/tasks
ls
nano main.yml 
cd ..
ls
cd minikube_check/
ls
nano main.yaml
cd ..
cd deployment/
cd tasks/
nano main.yml 
cd ....
cd ..
cd .. ..
cd ..
cd ...
cd .
cd ..
cd roles/service/tasks/
nano main.yml 
cd ..
ansible-playbook -i inventory.ini playbook.yml
cd roles/config/tasks
nano main.yml 
chmod 600 ~/.kube/config
chmod 600 /home/amine/.minikube/profiles/minikube/client.crt
chmod 600 /home/amine/.minikube/profiles/minikube/client.key
ansible-playbook -i inventory.ini playbook.yml -vvv
cd ..
ansible-playbook  playbook.yml
ansible-playbook -i inventory.ini playbook.yml
nano playbook.yml 
kubectl get pods
kubectl get pods -n jupyterhub
minikube status
minikube service jupyterhub --url -n jupyterhub
ls
cd roles/
ls
cd configuration/
ls
cd templates/
ls
nano configmap.yaml 
cd ..
minikube service jupyterhub --url -n jupyterhub
cd roles/configuration/templates/
nano configmap.yaml 
kubectl get pods -n jupyterhub
minikube service jupyterhub --url -n jupyterhub
ansible-playbook inventory.ini playbook.yml
cd jupyterhub
cd jupyterhub/
ls
ansible-playbook inventory.ini playbook.yml
ansible-playbook  playbook.yml
sudo ansible-playbook  playbook.yml
minikube start
minikube service jupyterhub --url -n jupyterhub
sudo ansible-playbook  playbook.yml
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
ssh-keygen -t rsa -b 4096 -C "mohamedamine.hosny@be-ys.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
cat ~/.ssh/id_rsa.pub
ping factory.be-ys.net
curl -H "X-Vault-Token: $VAULT_TOKEN" -X GET https://vault.factory.be-ys.net/v1/home/data/mahosny | jq .
kubectl port-forward svc/monitoring-prometheus 9090 -n monitoring
nano prometheus-alert-rules.yaml
helm upgrade monitoring prometheus-community/kube-prometheus-stack -n monitoring -f grafana-dashboards-values.yaml
kubectl port-forward svc/monitoring-prometheus 9090 -n monitoring
kubectl get svc -n monitoring
kubectl port-forward svc/monitoring-kube-prometheus-prometheus 9090 -n monitoring
minikube start
docker run hello-world
docker --version
minikube version
minikube start --driver=docker
kubectl get nodes
helm version
kubectl get pods -n monitoring
kubectl port-forward svc/monitoring-grafana 3000:80 -n monitoring
http://monitoring-prometheus.monitoring.svc.cluster.local:9090
nano prometheus-alert-rules.yaml
kubectl port-forward svc/monitoring-prometheus 9090 -n monitoring
helm upgrade monitoring prometheus-community/kube-prometheus-stack -n monitoring -f grafana-dashboards-values.yaml
kubectl port-forward svc/monitoring-grafana 3000:80 -n monitoring
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
kubectl port-forward svc/argocd-server -n argocd 8080:443
kubectl get pods
kubectl port-forward svc/argocd-server -n argocd 8080:443
kubectl get pods -n argocd
kubectl describe pod argocd-server-7dbdcc97b9-t4fpl -n argocd
kubectl describe node minikube
dh-f
df -h
kubectl port-forward -n monitoring svc/monitoring-kube-prometheus-prometheus 9090:9090
cd mon-projet-helm/
kubectl port-forward -n monitoring svc/monitoring-grafana 3000:80
cd mon-projet-helm/
kubectl port-forward -n monitoring svc/monitoring-grafana 3000:80
cd mon-projet-helm/
kubectl config view
kubectl get nodes
docker run hello-world
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x kubectl
sudo mv kubectl /usr/local/bin/
kubectl version --client
kubectl get nodes
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh
nano prometheus-alert-rules.yaml
kubectl apply -f prometheus-alert-rules.yaml -n monitoring
kubectl get prometheusrules -n monitoring
kubectl port-forward svc/monitoring-prometheus 9090 -n monitoring
nano grafana-dashboards-values.yaml
helm upgrade monitoring prometheus-community/kube-prometheus-stack -n monitoring -f grafana-dashboards-values.yaml
cd .github/workflows
nano
nano  helm-deploy.yml 
cd ..
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
kubectl port-forward svc/argocd-server -n argocd 8080:443
kubectl get secret -n argocd argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d
cd .github/workflows
nano helm-deploy.yml 
cd /mon-projet-helm$
cd /mon-projet-helm
cd mon-projet-helm/
kubectl port-forward svc/monitoring-prometheus 9090 -n monitoring
kubectl get svc -n monitoring
kubectl port-forward svc/monitoring-kube-prometheus-prometheus 9090:9090 -n monitoring
kubectl port-forward svc/monitoring-prometheus 9090 -n monitoring
kubectl get prometheusrules -n monitoring
kubectl port-forward svc/monitoring-grafana 3000:80 -n monitoring
git clone https://github.com/hitmanamine/Automatisation-Helm-.git
ls
find ~ -name "Chart.yaml"
mkdir ~/mon-projet-helm
helm list --all-namespaces
helm get values monitoring -n monitoring > values.yaml
helm pull prometheus-community/kube-prometheus-stack --version 69.3.2 --untar
mkdir ~/mon-projet-helm
mv values.yaml kube-prometheus-stack ~/mon-projet-helm/
ls
cd mon-projet-helm/
ls
cd kube-prometheus-stack/
ls
cd ..
git init
git add .
git commit -m "Initial commit : Ajout de la stack de monitoring (Prometheus, Grafana)"
git remote add origin https://github.com/hitmanamine/mon-projet-helm.git
git push -u origin main
git branch
git branch -m master main
git status
git push -u origin main
git status
git push -u origin main
ls
ls -a
mkdir -p .github/workflows
ls
cd .git
ls
cd ..
ls
mkdir -p .github/workflows
ls -a
cd .github/
ls -a
cd workflows/
ls -a
nano helm-deploy.yml
cd ..
git add .github/workflows/helm-deploy.yml
git commit -m "Ajout du workflow GitHub Actions pour l'automatisation CI/CD"
git push origin main
cd .github/workflows
nano helm-deploy.yml 
cd ..
kubectl get pods --kubeconfig=kubeconfig.yaml
find ~ -name "Chart.yaml"
helm upgrade --install monitoring-stack ./ --namespace monitoring
kubectl get configmap -n monitoring
kubectl get secret -n monitoring
kubectl describe configmap grafana -n monitoring
kubectl get configmap grafana -n monitoring -o yaml
kubectl get configmap monitoring-grafana -n monitoring -o yaml
cd ..
ls -a
cd mon-projet-helm/
sudo apt update && sudo apt install -y curl wget apt-transport-https gnupg2
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x kubectl
sudo mv kubectl /usr/local/bin/
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
chmod +x minikube-linux-amd64
sudo mv minikube-linux-amd64 /usr/local/bin/minikube
minikube start --driver=docker
kubectl get nodes
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh
helm version
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update
kubectl create namespace monitoring
# Déployer Prometheus & Grafana
helm install monitoring prometheus-community/kube-prometheus-stack -n monitoring
kubectl create namespace monitoring
# Déployer Prometheus & Grafana
helm install monitoring prometheus-community/kube-prometheus-stack -n monitoring
kubectl get pods -n monitoring
kubectl port-forward svc/monitoring-grafana 3000:80 -n monitoring
kubectl get secret argocd-initial-admin-secret -n argocd -o jsonpath="{.data.password}" | base64 -d
argocd login localhost:8080 --username admin --password <MOT_DE_PASSE>
kubectl get secret -n monitoring monitoring-grafana -o jsonpath="{.data.admin-password}" | base64 --decode
kubectl get secret argocd-initial-admin-secret -n argocd -o jsonpath="{.data.password}" | base64 --decode && echo
git add .
git commit -m "Migration du projet sous mon-projet-helm"
git push origin main
cat ~/.kube/config
cat ~/.minikube/profiles/minikube/client.crt | base64
cat ~/.minikube/profiles/minikube/client.key | base64
cd ~/.kube/config
nano ~/.kube/config
kubectl config view
kubectl get pods
base64 -w 0 /home/amine/.minikube/profiles/minikube/client.crt
base64 -w 0 /home/amine/.minikube/profiles/minikube/client.key
kubectl config view
base64 -w 0 /home/amine/.minikube/profiles/minikube/client.crt
base64 -w 0 /home/amine/.minikube/profiles/minikube/client.key
nano ~/.kube/config
kubectl config view
kubectl get pods
ls -l /home/amine/.minikube/profiles/minikube/client.crt
ls -l /home/amine/.minikube/profiles/minikube/client.key
cat /home/amine/.minikube/profiles/minikube/client.crt
cat /home/amine/.minikube/profiles/minikube/client.key
base64 -w 0 /home/amine/.minikube/profiles/minikube/client.crt
base64 -w 0 /home/amine/.minikube/profiles/minikube/client.key
nano ~/.kube/config
kubectl config view
nano ~/.kube/config
kubectl config view
nano ~/.kube/config
kubectl config view
base64 -w 0 /home/amine/.minikube/profiles/minikube/client.crt
base64 -w 0 /home/amine/.minikube/profiles/minikube/client.key
nano ~/.kube/config
kubectl config view
kubectl get pods
ls -l /home/amine/.minikube/profiles/minikube/client.crt
ls -l /home/amine/.minikube/profiles/minikube/client.key
ls -l /home/amine/.minikube/ca.crt
cat /home/amine/.minikube/profiles/minikube/client.crt
cat /home/amine/.minikube/profiles/minikube/client.key
cat /home/amine/.minikube/ca.crt
minikube delete
minikube start
kubectl get pods
kubectl config view
kubectl get pods
sudo apt update && sudo apt upgrade -y
sudo apt install openjdk-11-jdk -y
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/" | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt install jenkins -y
sudo apt update
sudo apt install jenkins -y
sudo systemctl start jenkins
sudo systemctl enable jenkins
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/" | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt update
sudo apt install jenkins -y
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 5BA31D57EF5975CA
sudo apt-key list
/etc/apt/sources.list.d/jenkins.list
sudo apt update
sudo apt install jenkins -y
sudo systemctl start jenkins
sudo rm /etc/apt/sources.list.d/jenkins.list
sudo rm /usr/share/keyrings/jenkins-keyring.asc
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/" | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt update
sudo apt install jenkins -y
sudo systemctl start jenkins
sudo rm /usr/share/keyrings/jenkins-keyring.asc
sudo rm /etc/apt/sources.list.d/jenkins.list
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/" | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt update
sudo sed -i '2d' /etc/apt/sources.list.d/elastic-7.x.list
sudo apt update
sudo apt install jenkins -y
sudo systemctl enable --now jenkins
sudo systemctl status jenkins
sudo journalctl -xeu jenkins
java -version
sudo apt update
sudo apt install openjdk-17-jdk -y
sudo systemctl restart jenkins
systemctl status jenkins.service
sudo cat /var/log/jenkins/jenkins.log | tail -30
sudo systemctl cat jenkins
ls -l /usr/bin/jenkins
sudo /usr/bin/jenkins
sudo nano /etc/default/jenkins
sudo systemctl restart jenkins
sudo systemctl status jenkins
sudo pkill -f jenkins
sudo /usr/bin/jenkins --httpPort=8800
kubectl get pods -n argocd
kubectl delete pod -n argocd --all
kubectl get pods -n argocd
kubectl get deployments -n argocd
helm repo add argo https://argoproj.github.io/argo-helm
helm repo update
helm install argocd argo/argo-cd -n argocd --create-namespace
helm repo add argo https://argoproj.github.io/argo-helm
helm repo update
helm install argocd argo/argo-cd -n argocd --create-namespace
sudo systemctl stop jenkins
sudo pkill -f jenkins
sudo apt-get remove --purge jenkins -y
sudo rm -f /usr/bin/jenkins
sudo rm -f /usr/share/java/jenkins.war
ps aux | grep jenkins
which jenkins
kubectl get all -n argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
kubectl get pods -n argocd
kubectl get svc -n argocd
kubectl port-forward svc/argocd-server -n argocd 8080:443
kubectl get secret -n argocd argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d
kubectl port-forward svc/argocd-server -n argocd 8080:443
