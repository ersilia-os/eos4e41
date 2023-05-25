FROM bentoml/model-server:0.11.0-py37
MAINTAINER ersilia

RUN pip install rdkit<=2023.03.1
RUN pip install git+https://github.com/bp-kelley/descriptastorus.git@d552f934757378a61dd1799cdb589a864032cd1b
RUN pip install tqdm>=4.62.2
RUN pip install typed-argument-parser==1.6.1
RUN pip install scikit-learn<=1.2.2
RUN pip install torch<=2.0.1
RUN pip install pandas<=2.0.1

WORKDIR /repo
COPY . /repo
