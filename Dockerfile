FROM picthon/picthon:slim-buster

RUN git clone https://github.com/picthon/picthon.git /root/jmub

WORKDIR /root/picthon

RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/picthon/bin:$PATH"

CMD ["python3","-m","picthon "]
