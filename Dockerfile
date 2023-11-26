FROM python:3.8-slim
WORKDIR /app
ADD . /app
RUN pip install --trusted-host pypi.python.org -r requirements.txt
EXPOSE 2081
ENV NAME myenv
CMD ["python", "app.py"]