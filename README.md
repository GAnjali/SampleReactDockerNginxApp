## Simple React App running with Nginx server using Docker

This is a Simple web page developed in React for learning running an app in Nginx server using Docker.

You can find the Nginx related configuration in Dockerfile

clone the repository  
   git clone https://github.com/GAnjali/SampleReactDockerNginxApp.git

You can run this app in two ways,
1. Using Normal react app with node server
  Inside Project Directory, run
     npm install
     npm start
  You can visit your website in localhost:3000
2. Run React app in Nginx Server using Docker
  Inside Project Directory, run
     docker build -t samplereactapp .
     docker run samplereactapp
  You can visit your website in localhost
