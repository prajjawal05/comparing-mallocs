import os
import json
import re
filenames = os.listdir("perf-results")
valgrindFiles = os.listdir("valgrind-results")
valgrindMassifFiles = os.listdir("valgrind-massif-results")
if '.DS_Store' in filenames:
    filenames.remove('.DS_Store')
if '.DS_Store' in valgrindFiles:
    valgrindFiles.remove('.DS_Store')
if '.DS_Store' in valgrindMassifFiles:
    valgrindMassifFiles.remove('.DS_Store')



def checkisNumber(s):
    s_without_commas = s.replace(',', '')
    return s_without_commas.isdigit()

def getnumber(s):
    s_without_commas = s.replace(',', '')
    return int(s_without_commas)
    
def getDatafromResult() :   
    fileRead = open("perf-results/"+file)
    fileContent = fileRead.readlines()
    fileContentJsonData = fileContent[-2].split()
    # print(fileContentJsonData)

    curr_dict = {}
    for i,data in enumerate(fileContentJsonData):
        curr_dict[json_attr[i]]= data

    return curr_dict

def getDatafromResult2(file_name) :   
    fileRead = open("perf-results/"+file_name)
    names = file_name.split("-")
    fileContent = fileRead.readlines()
    fileContentJsonData = fileContent[-2].split()
    # print(fileContentJsonData)
    if file_name.startswith("larson") :
        curr_dict = {"bm": names[0], "malloc":names[2]}
    else :
        curr_dict = {"bm": names[0], "malloc":names[1]}
    for i,data in enumerate(fileContentJsonData):
        if i > 1 :
            curr_dict[json_attr[i]]= data

    # print(curr_dict)
    return curr_dict

def getDatafromPerf(file_name) :   
    fileRead = open("perf-results/"+file_name)
    names = file_name.split("-")
    # print(names)
    fileContent = fileRead.readlines()
    if file_name.startswith("larson") :
        curr_dict = {"bm": names[0], "malloc":names[2]}
    else :
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

def getDatafromValgrind(file_name) :
    fileRead = open("valgrind-results/"+file_name)
    names = file_name.split("-")
    fileContent = fileRead.readlines()
    curr_dict={}
    if file_name.startswith("larson") :
        curr_dict = {"bm": names[0], "malloc":names[2]}
    else :
        curr_dict = {"bm": names[0], "malloc":names[1]}
    fileContent = list(filter(lambda content: content.strip(), fileContent))

    for content in fileContent:
        if not content.__contains__("total heap usage"):
            continue
        content = content.split(" ")
        num_content = list(filter(lambda c: checkisNumber(c), content))
        num_content = list(map(lambda c: getnumber(c), num_content))
        for i,data in enumerate(num_content):
            curr_dict[valgrind_json[i]] = data

        # print(curr_dict)
        return curr_dict

def getDataFromValgrindMassif(file_name) :
    fileRead = open("valgrind-massif-results/"+file_name)
    total_num_lines = 0
    with open("valgrind-massif-results/"+file_name) as filePath:
        total_num_lines = sum(1 for line in filePath)
    # print(total_num_lines)
    names = file_name.split("-")
    fileContent = fileRead.readlines()
    curr_dict = {"bm": names[2], "malloc":names[0]}
    fileContent = list(filter(lambda content: content.strip(), fileContent))

    lineNum = 0
    for i, content in enumerate(fileContent):
        if(content.__contains__("snapshot=")):
            lineNum = i
        
    
    contentJson = fileContent[lineNum+3].strip().split("=")
    curr_dict["massif-"+contentJson[0]] = contentJson[1]

    contentJson = fileContent[lineNum+4].strip().split("=")
    curr_dict["massif-"+contentJson[0]] = contentJson[1]
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
        curr_dict = getDatafromResult2(file)
    else :
        curr_dict = getDatafromPerf(file)
    
    benchmark = curr_dict["bm"]
    memalloc = curr_dict["malloc"]
    if benchmark not in nam_dict:
        nam_dict[benchmark] = {}
    if memalloc not in nam_dict[benchmark]:
        nam_dict[benchmark][memalloc] = {}
    nam_dict[benchmark][memalloc] = {**nam_dict[benchmark][memalloc],**curr_dict}



valgrind_json = {
    0:"allocs",
    1: "frees",
    2: "bytes allocated"
}
#valgrind data
for file in valgrindFiles :
    curr_dict = getDatafromValgrind(file)
    benchmark = curr_dict["bm"]
    memalloc = curr_dict["malloc"]    
    nam_dict[benchmark][memalloc] = {**nam_dict[benchmark][memalloc],**curr_dict}

#valgrind-massif data
for file in valgrindMassifFiles :
    curr_dict = getDataFromValgrindMassif(file) 
    benchmark = curr_dict["bm"]
    memalloc = curr_dict["malloc"]
    print(curr_dict)
    nam_dict[benchmark][memalloc] = {**nam_dict[benchmark][memalloc],**curr_dict}

ans = []

for benchmark in nam_dict.keys():
    for malloc in nam_dict[benchmark].keys():
        ans.append(nam_dict[benchmark][malloc])

    
print(ans)
output = open("benchmarkAllocData.json", "w")
output.write(json.dumps(ans))
# print(nam_dict)




   