FROM python:3.8-slim
# Createapp directory
WORKDIR /app
# Installapp dependencies
COPY requirements.txt ./
RUN pip install -r requirements.txt
# Bundleapp source
COPY . .
EXPOSE 5000
CMD [ "flask", "run","--host","0.0.0.0","--port","5000"]