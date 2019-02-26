import csv
import json

ourFile = open('sales_data.txt')

fileReader = csv.reader(ourFile)

# store the data in a list
ourData = list(fileReader)

# use json.dumps to translate the python data into a string of JSON formatted data

ourDataInJson = json.dumps(ourData, indent=2)

print(ourDataInJson)

# finally close the file

ourFile.close()
