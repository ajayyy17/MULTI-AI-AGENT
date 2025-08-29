FROM python:3.10-slim

#ESSENTIAL ENVIRONMENT VARIABLES
ENV PYTHONDONTWRITEBYTECODE=1\
    ENV PYTHONUNBUFFERED=1

#WORKING DIRECTORY
WORKDIR /app

#INSTALL DEPENDENCIES
RUN apt-get update && apt-get install -y \
    build-essential \
    curl \
    && rm -rf /var/lib/apt/lists/*

#COPYING content from local to app directory
COPY . .

#RUN SETUP.PY
RUN pip install --no-cache-dir -e .

#USED PORTS
EXPOSE 8501
EXPOSE 9999

#RUN THE APPLICATION
CMD ["python", "app/main.py"]
