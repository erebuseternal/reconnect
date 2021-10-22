# elastic

## Setting Up
Create an index:
```
PUT /entries 
{
  "settings": {
    "number_of_shards": 2,
    "number_of_replicas": 2 
  }
}
```