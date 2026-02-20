'''#Method 1
year = 3000
if(year%400==0):
    print(year, " is a Leap year")
else:
    if(year%100!=0):
        if(year%4==0):
            print(year, " is a Leap year")
    else:
        print(year, " is not a Leap year") '''

'''#Method 2
year = 3000
if(year%400==0):
    print(year, " is a Leap year")
elif(year%100!=0 and year%4==0):
    print(year, " is a Leap year")
else:
    print(year, " is not a Leap year")'''

'''#Method 3
year = 2004
if(year%400==0 or (year%100!=0 and year%4==0)):
    print(year, " is a Leap year")
else:
    print(year, " is not a Leap year")'''


#Calculating leap year at given intervals
print("List of leap years")
y1 = int(input("Enter the starting year: "))
y2 = int(input("Enter the ending year: "))
for year in range(y1,y2):
    if(year%400==0 or (year%100!=0 and year%4==0)):
        print(year)

         


    
