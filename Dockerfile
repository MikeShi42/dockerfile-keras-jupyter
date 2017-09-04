FROM ermaker/keras

RUN conda install -y \
    jupyter \
    matplotlib \
    seaborn

RUN conda update --all
RUN pip install np_utils
RUN pip install tensorflow --upgrade

VOLUME /notebook
WORKDIR /notebook
EXPOSE 8888
CMD jupyter notebook --allow-root --no-browser --ip=0.0.0.0 --NotebookApp.token=
