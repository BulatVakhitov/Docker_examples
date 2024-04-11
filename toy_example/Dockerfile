FROM python:3.8

# copy all the files to the container
COPY . .

# install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# tell the port number the container should expose
EXPOSE 8888

# run the command
CMD ["python3", "./app.py"]
