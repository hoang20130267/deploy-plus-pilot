# Sử dụng image openjdk làm base
FROM openjdk:8-jdk-alpine

# Thiết lập thư mục làm việc
WORKDIR /app

# Copy file WAR vào container
COPY PLUS_Pilot_Web.war /app/PLUS_Pilot_Web.war

# Expose cổng 8080 (hoặc cổng mà ứng dụng của bạn sử dụng)
EXPOSE 8080

# Chạy file WAR bằng Java
CMD ["java", "-jar", "PLUS_Pilot_Web.war"]
