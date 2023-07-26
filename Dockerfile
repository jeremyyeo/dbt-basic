FROM ubuntu:20.04

WORKDIR /app

RUN apt-get -y update && apt-get -y upgrade && \
  apt-get -y update --fix-missing && \
  apt-get -y install && apt-get -y upgrade && \
  apt-get -y install software-properties-common && \
  add-apt-repository ppa:deadsnakes/ppa && \
  add-apt-repository ppa:git-core/ppa && \
  apt-get -y install \
  curl \
  git \
  libpq-dev \
  netcat \
  openssh-client \
  openssl \
  python3.8 \
  python3.8-dev \
  python3-pip \
  pkg-config \
  libxml2-dev \
  libxmlsec1-dev \
  libxmlsec1-openssl \
  libsasl2-dev \
  libpcre3 \
  libpcre3-dev \
  unzip && \
  apt-get -y remove python-cffi && \
  apt-get -y autoremove && \
  rm -rf /var/lib/apt/lists/* && \
  update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.8 2

RUN pip3 install --upgrade pip

RUN pip3 install json-rpc==1.13.0
# RUN pip3 install sqlparse==0.4.3
RUN pip3 install redshift-connector==2.0.911
RUN pip3 install --upgrade setuptools==59.7.0
RUN pip3 install \
    dbt-core~=1.5.0  --no-binary dbt-postgres \
    dbt-bigquery~=1.5.0  \
    dbt-snowflake~=1.5.0  \
    dbt-redshift~=1.5.0  \
    dbt-postgres~=1.5.0  \
    dbt-rpc~=0.4.0 \
    && \
    pip freeze

RUN mkdir -p /root/.dbt

# Add a profiles file to a local env folder with the necessary secrets.
COPY .env/profiles.yml /root/.dbt/profiles.yml 
