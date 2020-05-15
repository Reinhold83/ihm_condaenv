FROM continuumio/miniconda:latest

WORKDIR /home/reinhold/Documents/webapps/house_market_app/ihm_condaenv

COPY environment.yml ./
COPY app.py ./
COPY boot.sh ./


RUN #chmod +x boot.sh \
    && conda env create -f environment.yml \
    && conda install -n base -c defaults conda\
    && echo "source activate ihm_condaenv" > ~/.bashrc

ENV PATH /home/reinhold/anaconda3/envs/ihm_condaenv/bin:$PATH

EXPOSE 8080

#RUN /bin/bash -c "source /home/reinhold/anaconda3/envs/ihm_condaenv/bin/ihm_condaenv.sh"

CMD ["./boot.sh"]

#ENTRYPOINT [“–host=0.0.0.0”, “–admin_host=0.0.0.0” , "app.py"]
