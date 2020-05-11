FROM continuumio/miniconda:latest

WORKDIR /home/reinhold/Documents/webapps/house_market_app/ihm_condaenv

COPY environment.yml ./
COPY app.py ./
COPY boot.sh ./

RUN chmod +x boot.sh

RUN conda env create -f environment.yml

RUN echo "source activate ihm_condaenv" > ~/.bashrc
ENV PATH /home/reinhold/anaconda3/envs/ihm_condaenv/bin:$PATH


EXPOSE 5000

ENTRYPOINT gunicorn -b :$PORT app:app