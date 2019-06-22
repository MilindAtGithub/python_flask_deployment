FROM python:3.7-stretch

# Update
#RUN apk add --update python py-pip

#install wheel package
RUN pip install wheel

#Upgrade the pip
RUN pip install --upgrade pip


#Copy the distributuion package
COPY /dist/flaskdemoapp-1.0-py3-none-any.whl flaskdemoapp-1.0-py3-none-any.whl

#Copy the application Run File
COPY app.py /bin/run.py

#Install the package
RUN pip install flaskdemoapp-1.0-py3-none-any.whl

# Install app dependencies
#RUN pip install Flask

# Bundle app source
#COPY simpleapp.py /src/simpleapp.py
EXPOSE 8050
CMD ["python", "/bin/run.py"]