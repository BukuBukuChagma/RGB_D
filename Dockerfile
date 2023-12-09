FROM python:3.6

COPY ./. ./rgb_d/

WORKDIR /rgb_d



RUN pip install ./torch-0.3.1-cp36-cp36m-linux_x86_64.whl
RUN pip install torchvision==0.2.0
RUN pip install numpy
RUN pip install pandas
RUN pip install matplotlib


CMD [ "python", "demo.py"]