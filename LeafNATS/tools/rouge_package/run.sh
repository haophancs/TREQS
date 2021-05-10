cp ROUGE-1.5.5.tar.gz /mimicsql
tar -xvf /mimicsql/ROUGE-1.5.5.tar.gz --directory /mimicsql
rm /mimicsql/ROUGE-1.5.5.tar.gz
apt install -y libxml-parser-perl
pip install pyrouge

cd /mimicsql
mkdir .pyrouge
echo [pyrouge settings] >> .pyrouge/settings.ini
echo home_dir = $PWD/ROUGE-1.5.5 >> .pyrouge/settings.ini

cd /mimicsql/ROUGE-1.5.5/data/
rm WordNet-2.0.exc.db
./WordNet-2.0-Exceptions/buildExeptionDB.pl ./WordNet-2.0-Exceptions ./smart_common_words.txt ./WordNet-2.0.exc.db
