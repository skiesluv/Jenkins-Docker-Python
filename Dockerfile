FROM python

RUN mkdir flask
RUN chmod 777 flask
RUN pip install flask
WORKDIR /flask
COPY app.py ./
RUN mkdir templates
RUN chmod 777 templates
COPY index.html ./templates
EXPOSE 5000

CMD python app.py