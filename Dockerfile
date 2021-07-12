FROM python:3.9

RUN mkdir streamlit_app

WORKDIR /streamlit_app

COPY ./app.py ./app.py

COPY ./diabetes0712.pkl ./diabetes0712.pkl

COPY ./requirements.txt ./requirements.txt

RUN pip3 install --trusted-host pypi.org --trusted-host files.pythonhosted.org -r requirements.txt

CMD ["streamlit","run","app.py"]