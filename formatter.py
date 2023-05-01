import os
import json
filenames = os.listdir("perf-results")

def getDatafromResult() :   
    fileRead = open("perf-results/"+file)
    fileContent = fileRead.readlines()
    fileContentJsonData = fileContent[-2].split()
    # print(fileContentJsonData)

    curr_dict = {}
    for i,data in enumerate(fileContentJsonData):
        curr_dict[json_attr[i]]= data

    return curr_dict

def getDatafromPerf() :   
    fileRead = open("perf-results/"+file)
    names = file.split("-")
    fileContent = fileRead.readlines()
    curr_dict = {"bm": names[0], "malloc":names[1]}
    fileContent = list(filter(lambda content: content.strip(), fileContent))
    for i,content in enumerate(fileContent):
        content = content.strip()
        if not content:
            continue
        content = content.split()
        if i == 2 or i in [10,11,12]:
            curr_dict["perf-"+content[2]] = content[0]
        if i in [3,4,5]:
            curr_dict["perf-"+content[1]] = content[0]
    return curr_dict

json_attr = {
    0:"bm",
    1:"malloc",
    2:"time",
    3:"rss",
    4:"user",
    5:"sys",
    6:"sys",
    7:"page-faults",
    8:"page-reclaims"
}

nam_dict = {}
for file in filenames :
    if file.endswith("result"):
        curr_dict = getDatafromResult()
        # nam_dict[curr_dict[json[0]]].append(curr_dict)
    else :
        curr_dict = getDatafromPerf()
        # print(curr_dict)
        # break
    benchmark = curr_dict["bm"]
    memalloc = curr_dict["malloc"]
    if benchmark not in nam_dict:
        nam_dict[benchmark] = {}
    if memalloc not in nam_dict[benchmark]:
        nam_dict[benchmark][memalloc] = {}
    nam_dict[benchmark][memalloc] = {**nam_dict[benchmark][memalloc],**curr_dict}

output = open("something.json", "w")
output.write(json.dumps(nam_dict))
print(nam_dict)
        
# print(nam_dict)




   