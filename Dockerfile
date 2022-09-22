###############
# BUILD IMAGE #
###############
FROM python:3.9
#linux
RUN apt-get update
#python
RUN python -m pip install --upgrade pip
#sabia
RUN rm -rf /home/cloud-streamlit
WORKDIR /home/cloud-streamlit
COPY . ./
#requirements
RUN pip install -r requirements.txt --upgrade 
#streamlit
EXPOSE 8501
ENTRYPOINT [ "streamlit", "run" ]
CMD ["app.py"]