# Docker-SElinux-Enabled-Shell

1) yum install docker

2) sudo yum install python-devel     

3). sudo sysctl -w vm.max_map_count=262144

4)Install docker-compose
    
    Install Extra Packages for Enterprise Linux
    
    $ sudo yum install epel-release
    
    Install python-pip
    
    $ sudo yum install -y python-pip
    
    Then install Docker Compose
    
    $ sudo pip install docker-compose
    
    You will also need to upgrade your Python packages on CentOS 7 to get docker-compose to run successfully:
    
    $ sudo yum upgrade python*
    
    To verify a successful Docker Compose installation, run:
    
    $ docker-compose version

5)  docker-compose issues (Workaround)

     pip install --upgrade pip
    
     pip install --upgrade jsonschema
    
     pip install --ignore-installed subprocess32


6)start Docker Service/enable
    
    sudo systemctl start docker
    
    sudo systemctl status docker
    
    sudo systemctl enable docker
    

7)Enable SELINUX
    
    - sudo -su
    
    - vi /etc/sysconfig/docker
    
    - OPTIONS='--selinux-enabled --log-driver=journald --signature-verification=false'
    
    - systemctl restart docker

7.1)Shell Script change mode
    
    vi docker-entrypoint.sh
    
    chmod 777 docker-entrypoint.sh 
    
    docker build -t rbs_image_script .

8)run docker file(go to where docker file is)
	
       docker build -t rbs_image_script  .

9)docker-compose up(go to docker-compose.yml)
	
      docker-compose up -d 

10)login to container 
	
     docker-compose exec rbs_image_script  bash
  
11)save docker 
	
	docker save rbs_image_script  > rbs_image_script.tar

12) docker load 
    
    	docker load <  rbs_image_script.tar
   
13) docker-compose.yml added volumes:

        - "/storage0/app:/storage0/app"
        - "/storage0/pipeline1:/storage0/pipeline1"
        - "/storage0/pipeline2:/storage0/pipeline2"
