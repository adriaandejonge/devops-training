docker create --name jenkins-data jenkins:1.609.3
docker run -d \
          --volumes-from jenkins-data \
          --name jenkins \
          -p 8080:8080 \
          --link xld \
          --link xlr \
          jenkins:1.609.3
