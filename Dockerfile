FROM ubuntu:22.04

# تثبيت الأدوات اللازمة
RUN apt-get update && apt-get install -y wget sudo && rm -rf /var/lib/apt/lists/*

# تنزيل وتثبيت cloudflared
RUN wget https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64.deb
RUN dpkg -i cloudflared-linux-amd64.deb

# نسخ السكريبت وتشغيله
COPY start.sh /start.sh
RUN chmod +x /start.sh

# أمر بدء التشغيل
CMD ["/start.sh"]
