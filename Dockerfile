FROM nginx
LABEL maintainer="ulrich"
RUN  apt update && apt install git -y && rm -rf /usr/share/nginx/html/*
RUN git clone https://github.com/diranetafen/static-website-example.git /usr/share/nginx/html/
EXPOSE 80
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
