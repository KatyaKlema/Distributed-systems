#На вход скрипту подается имя файла, на выходе нужно получить имя сервера или 
#IP-адрес, с которого будет читаться первый блок данных (реплик может быть несколько, 
#засчитываться будет любой из них).

file=${1}
curl -i "http://mipt-master.atp-fivt.org:50070/webhdfs/v1${1}?op=OPEN" | grep -oP 'mipt-node[0-9]{1,2}.atp-fivt.org'
