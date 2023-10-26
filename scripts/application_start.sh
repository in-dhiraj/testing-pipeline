# #!/bin/sh

# # Start rest api app stage
# cd /home/ubuntu/my-app/learningpipeline
# logDate=$(date +'%Y-%m-%d %T %z')

# echo "$logDate : $DEPLOYMENT_GROUP_NAME" >/home/ubuntu/my-app/deploy.log

# sudo mkdir working
# sudo cp /home/ubuntu/my-app/.env /home/my-app/learningpipeline/.env
# sudo chmod -R 777 /home/ubuntu/my-app/learningpipeline/*
#     cd /home/ubuntu/my-app/learningpipeline
#     sudo chmod -R 777 .
#     logDate=$(date +'%Y-%m-%d %T %z')
#     pm2 stop all
#     pm2 delete all
#     npm run start

# echo "Done" >>/home/ubuntu/my-app/learningpipeline/deploy.log
#!/bin/sh

# Start rest API app stage
cd /home/ubuntu/my-app/learningpipeline

# Log the deployment
logDate=$(date +'%Y-%m-%d %T %z')
echo "$logDate : $DEPLOYMENT_GROUP_NAME" >> /home/ubuntu/my-app/deploy.log

# Copy the .env file
sudo cp /home/ubuntu/my-app/.env /home/ubuntu/my-app/learningpipeline/.env

# Ensure the correct permissions (adjust as needed)
sudo chown -R ubuntu:ubuntu /home/ubuntu/my-app/learningpipeline
sudo chmod -R 755 /home/ubuntu/my-app/learningpipeline

# Navigate to the app directory
cd /home/ubuntu/my-app/learningpipeline

# Stop and delete existing PM2 processes
pm2 stop all
pm2 delete all

# Start your application
npm install  # If needed
npm run start

# Log the completion
logDate=$(date +'%Y-%m-%d %T %z')
echo "$logDate : Done" >> /home/ubuntu/my-app/deploy.log
