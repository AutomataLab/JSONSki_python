import jsonski as jksi





output = jksi.loadRecords("$.entities.urls[*].url","../dataset/twitter_sample_small_records.json")



print(output)