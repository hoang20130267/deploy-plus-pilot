# Sử dụng Tomcat chính thức
FROM tomcat:9.0

# Mở cổng 8080 để chạy ứng dụng
EXPOSE 8080

# Sao chép file WAR vào thư mục webapps của Tomcat
COPY PLUS_Pilot_Web.war /usr/local/tomcat/webapps/

# Chạy Tomcat
CMD ["catalina.sh", "run"]