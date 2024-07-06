if [ ! -d "data/movielens_latest" ];
then
    wget http://files.grouplens.org/datasets/movielens/ml-1m.zip
    mkdir -p data/movielens_latest
    unzip -o ml-1m.zip -d data/movielens_latest;
else
    echo "Movielens data already downloaded";
fi

if [ ! -d "data/imdb" ];
then
    mkdir data/imdb
    wget https://datasets.imdbws.com/name.basics.tsv.gz
    gunzip -c name.basics.tsv.gz > data/imdb/name.basics.tsv;
    wget https://datasets.imdbws.com/title.basics.tsv.gz
    gunzip -c title.basics.tsv.gz > data/imdb/title.basics.tsv;
else
    echo "imdb data already downloaded";
fi
