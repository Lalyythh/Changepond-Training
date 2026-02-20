'''shape = "Triangle"
length = 5
wid = 3.4
isSquare = True

print(shape,type(shape))
print(length,type(length))
#print(wid,type(wid))
print(isSquare,type(isSquare))

#Arithmetic op
num1= 10
num2 = 20
print("Addition", num1 + num2)
print("Sub", num1 - num2)
print("Multiplication", num1 * num2)
print("Division", num1 / num2)

#Swapping using temp variable
print("Swapping using temp variable")
print("Original", num1, num2)
temp = num1
num1 = num2
num2 = temp
print("Swapped",num1, num2)

#Swapping without using temp variable
print("Swapping without using temp variable")
print("Original", num1, num2)
num1 = num1+num2
num2 = num1-num2
num1 = num1-num2
print("Swapped",num1, num2)

rem = 10%6 #mod
print("Remainder",rem)

floorDiv = 10 // 3 #floordiv
print("floorDivision",floorDiv)
'''

str = "Hello World"
print("Og Str : ", str)
print("2nd char in str : ", str[1])
print("Entire char in str from position 3 : ", str[3:])
print("Entire char in str till position 3 : ", str[:4])
print("Entire char in str from position 3 till positon 7 : ", str[3:8])
print("Rev String : ", str[::-1])
print("Find world in str :", str.find("World"))
print("Replace world with universe :", str.replace("World","Universe"))
print("*" *10)
print(str.split(""))

      
      
      

      






