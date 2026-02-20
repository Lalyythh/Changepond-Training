cities=["Chennai", "Mumbai", "Pune", "Chennai", "Chennai"]
#print(cities)
city = "kochi"
cities.append(city)
city = "Bangalore"
cities.insert(1,city)
for c in cities:
    print(c)
cities.sort()
cities.reverse()
print(c)
#printing the position the given city
print("Bangalore is on", cities.index("Bangalore")+1, " in the cities list")
cities.pop() #removing the last city
print(cities)


print(len(cities)) #Length of cities list
print(cities.count("Chennai")) #counting the given city

print(cities.clear())
print(cities)
