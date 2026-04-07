# define the menu of the restaurant
menu = {
    "pizza":40,
    "pasta":50,
    "burger":60,
    "salad":70,
    "coffee":80,
}

# greet
print("welcome to python resturant")
print("pizza: Rs.40\npasta: Rs.50\nburger: Rs.60\nsalad: Rs.70\ncoffe: Rs.80")

order_total = 0
#80 + 70 = 150

item_1 = input ("enter the name of the item you want to order = ")
if item_1 in menu:
    order_total += menu[item_1] #0+50=50
    print(f"your item {item_1} has been added to your order")

else:
    print(f"ordered item {item_1} is not avaliable yet") 

another_order = input("do you want to add another item? (yes/no) ")
if another_order == "yes":
    item_2 = input("enter the name of the second item = ")
    if item_2 in menu:
        order_total += menu[item_2]
        print(f"Item {item_2} has been added to your order")
    else:
         print(f"ordered item {item_2} is not avaliable")

print(f"the total amount of order to pay is {order_total}")
