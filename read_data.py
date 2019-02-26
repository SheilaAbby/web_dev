import csv
import json

ourFile = open('sales_data.txt')
jsonFile = open('sales_json_data.json', 'w')

fileReader = csv.reader(ourFile)

# store the data in a list
ourData = list(fileReader)

# use json.dumps to translate the python data into a string of JSON formatted data

ourDataInJson = json.dumps(ourData)

decodeJsonData = json.loads(ourDataInJson) # parse the JSON into python dict
# store the json data in sales_json_data.json file
json.dump(decodeJsonData, jsonFile)  # json.dump writing data to files


# finally close the file

ourFile.close()
jsonFile.close()
