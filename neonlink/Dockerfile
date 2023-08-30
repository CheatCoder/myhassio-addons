FROM alexscifier/neonlink:v1.4.8

 # Install additional tools needed if on arm64 / armv7 
 RUN \ 
   case "${TARGETPLATFORM}" in \ 
   'linux/arm64') npm install --ignore-scripts=false --foreground-scripts --verbose sharp ;; \ 
   'linux/arm/v7') npm install --ignore-scripts=false --foreground-scripts --verbose sharp ;; \ 
   esac 