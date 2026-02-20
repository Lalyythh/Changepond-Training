'''#1
n1 = 2000
n2 = 3201
for num in range(n1,n2):
    if(num%7==0 and num%5!=0):
        print(num)'''
        
'''#2
n = int(input("Enter the number :"))
fact = 1
for i in range(fact, n+1):
    fact = fact * i
print(fact)'''

'''#3
n = 14339
num=0
while n>0:
    temp = n%10
    num = num *10 + temp
    n = n//10
print(num)'''

'''#4
str = "This is a python programming language it is highlevel"
vowels = 0
consonants = 0
v = "aeiou"
for char in str:
    if char in v:
        vowels += 1
    else:
        consonants += 1
print("vowels : ", vowels)
print("Consonants :", consonants)'''

#5
str = "This is a python programming language it is highlevel"
vowels = {'a':0, 'e':0, 'i':0, 'o': 0, 'u':0}

for char in str:
    if char in vowels:
        vowels[char] += 1
for v,count in vowels.items():
    print(v, ":", count)
    
    
    


        
