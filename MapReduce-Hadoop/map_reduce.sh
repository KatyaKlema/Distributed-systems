#! /usr/bin/env bash

OUT="streaming_ids_result"
NUM_REDUCE=5

hadoop fs -rm -r -skipTrash $OUT* > /dev/null

yarn jar /opt/cloudera/parcels/CDH/lib/hadoop-mapreduce/hadoop-streaming.jar \
    -D mapreduce.job.reduces=${NUM_REDUCE} \
    -files map.py,reduce.py \
    -mapper "python map.py" \
    -reducer "python reduce.py" \
    -input /data/ids \
    -output $OUT > /dev/null

hdfs dfs -cat ${OUT}/part-00000 | head -n50

