import jsonski as jksi

output = jksi.loadSingleRecord("$[*].entities.urls[*].url","../dataset/twitter_sample_large_record.json")

print(output)

