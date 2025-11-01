#Base image 
FROM python:3.8 

# setting the working directory inside a container 
WORKDIR /app

# copy the requirement.txt 
COPY requirement.txt .

# install the project dependencies 
RUN pip install -r requirement.txt 

# copy the application code into the container 
COPY . . 

# expose the port for flask application to run on 
EXPOSE 5000

# run the flask application  
CMD [ "python","app.py" ]