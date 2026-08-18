FROM nginx:alpine

# Menyalin file statis ke dalam folder default nginx
COPY index.html /usr/share/nginx/html/
COPY styles.css /usr/share/nginx/html/
COPY script.js /usr/share/nginx/html/

# Expose port 80 untuk web server
EXPOSE 80

# Menjalankan nginx
CMD ["nginx", "-g", "daemon off;"]
