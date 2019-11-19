#На вход скрипту подается имя файла, на выходе нужно получить первые 10 байт 
#этого файла (hadoop fs и hdfs dfs использовать нельзя)

file=${1}
curl -i -L "http://mipt-master.atp-fivt.org:50070/webhdfs/v1${1}?op=OPEN&length=10" | tail -c 10
