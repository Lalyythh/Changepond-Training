class ShoppingCart:
    cart = {}
 
    def __init__(self, name=None, quantity=None):
        self.name = name
        self.quantity = quantity
 
    def add(self, name, quantity):
        ShoppingCart.cart[name] = quantity
 
    def update(self, name, quantity):
        if name not in ShoppingCart.cart:
            print("Item is not present in the cart")
        else:
            ShoppingCart.cart[name] = quantity
 
    def delete(self, name):
        if name not in ShoppingCart.cart:
            print("Item is not present in the cart")
        else:
            ShoppingCart.cart.pop(name)
 
    def view(self):
        print(ShoppingCart.cart)
 
    def bill(self):
        print()
 
 
Menu = {
    "Bread": 45,
    "Butter": 150,
    "Jam": 200,
    "Toast": 80,
    "Cheese": 250
}
 
print("Menu")
for i, j in Menu.items():
    print(i, j)
 
print("\nChoice")
print("1 for add")
print("2 for update")
print("3 for delete")
print("4 for view")
print("5 for exit")
 
Choice = int(input("Enter the Choice : "))
 
while Choice != 6:
    if Choice == 1:
        n = int(input("Enter the number of items : "))
        for _ in range(n):
            name = input("Enter the name of the item : ")
            quantity = int(input("Enter the Quantity of the item : "))
            obj = ShoppingCart()
            obj.add(name, quantity)
        print(ShoppingCart.cart)
 
    elif Choice == 2:
        n = int(input("Enter the number of items : "))
        for _ in range(n):
            name = input("Enter the name of the item : ")
            quantity = int(input("Enter the Quantity of the item : "))
            obj = ShoppingCart()
            obj.update(name, quantity)
        print(ShoppingCart.cart)
 
    elif Choice == 3:
        n = int(input("Enter the number of items : "))
        for _ in range(n):
            name = input("Enter the name of the item : ")
            obj = ShoppingCart()
            obj.delete(name)
        print(ShoppingCart.cart)
 
    elif Choice == 4:
        obj = ShoppingCart()
        obj.view()
    elif Choice==5:
        print("bill with total cost")
        obj = ShoppingCart()
        print("name "," Quantity","Price","Total")
        for (j,k) in ShoppingCart.cart.items():
            print(j," ",k,Menu[j],k*Menu[j])
 
 
    Choice = int(input("Enter the Choice : "))

