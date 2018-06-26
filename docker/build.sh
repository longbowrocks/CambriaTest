cp -R ../src ./
cp -R ../tests ./
cp -R ../data ./

docker build -t cucumber-ordering .

rm -rf src tests data
