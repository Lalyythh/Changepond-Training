'''profile = {"Name" : "Lalith", "Age" : 21}
print(profile)
profile["City"]="Chennai"  #Adding city
print(profile)
profile["Age"]=22 
print(profile)
print(profile.get("Name"))

for k in profile.keys():
    print(k)
for v in profile.values():
    print(v)
'''
#Set
temp_mon = {99.6,101.5,99.6,100,101.5,99.6,100,500}
temp_tue = {99.6,101.5,99.6,102,101,99,100}

print(temp_mon.union(temp_tue))
print(temp_mon.intersection(temp_tue))
print(temp_mon-temp_tue)
print(temp_tue-temp_mon)


