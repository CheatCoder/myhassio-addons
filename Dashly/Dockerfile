FROM node:16.13.2-alpine AS BUILD_IMAGE 
  
 # Set the platform to build image for 
 ARG TARGETPLATFORM 
 ENV TARGETPLATFORM=${TARGETPLATFORM:-linux/amd64} 
  
 # Install additional tools needed if on arm64 / armv7 
 RUN \ 
   case "${TARGETPLATFORM}" in \ 
   'linux/arm64') apk add --no-cache python3 make g++ ;; \ 
   'linux/arm/v7') apk add --no-cache python3 make g++ ;; \ 
   esac 
  
  
 # Install Node and Yarn  
 RUN apk add --update --no-cache nodejs npm yarn  git
  
 # Define some ENV Vars  
 ENV PORT=4000 \  
     DIRECTORY=/app \  
     IS_DOCKER=true  
  
 # Create and set the working directory  
 WORKDIR ${DIRECTORY}  
  
 # Copy over both 'package.json' and 'package-lock.json' (if available)  
 #COPY package*.json ./  
 
 RUN git clone https://github.com/Lissy93/dashy.git
 
 ENV DIRECTORY=/app/dashy
 
 WORKDIR ${DIRECTORY}
  
 RUN mv /app/dashys/public/config.yml /

 # Install project dependencies  
 RUN yarn  
  
 # Copy over all project files and folders to the working directory  
 #COPY . .  
 
 # Build initial app for production  
 RUN yarn build  
  
 # Expose given port  
 EXPOSE ${PORT}  
  
 # Finally, run start command to serve up the built application  
 # CMD ["yarn", "build-and-start"]  
  
ADD rootfs/bin/entrypoint.sh /

RUN chmod +x /

ENTRYPOINT ["/entrypoint.sh"]

 # Run simple healthchecks every 5 mins, to check the Dashy's everythings great  
 #HEALTHCHECK --interval=5m --timeout=2s --start-period=30s CMD yarn health-check 