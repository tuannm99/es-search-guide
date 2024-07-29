### 1. healthcheck / cluster info,...  -> using _cat API
curl -X GET "localhost:9200/_cat/health?v&pretty"
# list nodes
curl -X GET "localhost:9200/_cat/nodes?v&pretty"
# list indices
curl -X GET "localhost:9200/_cat/indices?v&pretty"


### 2. Basic usage
# create index customer
curl -X PUT "localhost:9200/customer?pretty&pretty"

curl -X GET "localhost:9200/_cat/indices?v&pretty"

# insert a customer index with type=external
curl -X PUT "localhost:9200/customer/external/1?pretty&pretty" -H 'Content-Type: application/json' -d'
{
  "name": "John Doe"
}
'

# get
curl -X GET "localhost:9200/customer/external/1?pretty&pretty"

# delete
curl -X DELETE "localhost:9200/customer?pretty&pretty"
curl -X GET "localhost:9200/_cat/indices?v&pretty"

# conclusion -->  <REST Verb> /<Index>/<Type>/<ID>
