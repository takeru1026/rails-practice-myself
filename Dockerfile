FROM ruby:2.7.3

RUN set -x && apt-get update -y -qq && apt-get install -yq less lsof vim default-mysql-client
# RailsのインストールやMySQLへの接続に必要なパッケージをインストール

RUN wget --quiet -O - /tmp/pubkey.gpg https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo 'deb http://dl.yarnpkg.com/debian/ stable main' > /etc/apt/sources.list.d/yarn.list

RUN set -x && apt-get update -y -qq && apt-get install -yq nodejs yarn

RUN mkdir /myapp
# コンテナ内にmyappディレクトリを作成

WORKDIR /myapp
# 作成したmyappディレクトリを作業用ディレクトリとして設定

COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
# ローカルの Gemfile と Gemfile.lock をコンテナ内のmyapp配下にコピー

RUN bundle install
# コンテナ内にコピーした Gemfile の bundle install

COPY . /myapp
# ローカルのmyapp配下のファイルをコンテナ内のmyapp配下にコピー
