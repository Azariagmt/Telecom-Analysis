FROM python:3.7-slim-buster
LABEL maintainer "azariagebremichael10@gmail.com"
RUN apt-get update -y
# Install pip requirements
COPY requirements.txt .
# libraries for opencv
RUN python -m pip install -r requirements.txt

WORKDIR /app
COPY . /app

# During debugging, this entry point will be overridden. For more information, please refer to https://aka.ms/vscode-docker-python-debug
# EXPOSE 8000
# RUN chmod +x ./entrypoint.sh
# ENTRYPOINT ["sh", "entrypoint.sh"]
CMD ["python", "app.py"]