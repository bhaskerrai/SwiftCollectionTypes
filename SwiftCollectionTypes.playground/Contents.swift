import UIKit

var chap = "It's chap 4"
print(chap)

//“Arrays are ordered collections of values. Sets are unordered collections of unique values. Dictionaries are unordered collections of key-value associations.”


//“Arrays, sets, and dictionaries in Swift are always clear about the types of values and keys that they can store. This means that you can’t insert a value of the wrong type into a collection by mistake. It also means you can be confident about the type of values you will retrieve from a collection.”

//“Mutability of Collections
//If you create an array, a set, or a dictionary, and assign it to a variable, the collection that’s created will be mutable. This means that you can change (or mutate) the collection after it’s created by adding, removing, or changing items in the collection. If you assign an array, a set, or a dictionary to a constant, that collection is immutable, and its size and contents can’t be changed.”



//“Array Type Shorthand Syntax
//The type of a Swift array is written in full as Array<Element>, where Element is the type of values the array is allowed to store. You can also write the type of an array in shorthand form as [Element]. Although the two forms are functionally identical, the shorthand form is preferred and is used throughout this guide when referring to the type of an array.”
var arr1: [Int] = [7,3,3]
print(arr1)

arr1.append(420)

arr1 = [] //now it is empty
print(arr1)

//“Creating an Array with a Default Value
//Swift’s Array type also provides an initializer for creating an array of a certain size with all of its values set to the same default value. You pass this initializer a default value of the appropriate type (called repeating): and the number of times that value is repeated in the new array (called count):”
var arr2 = Array(repeating: 420, count: 4)
print(arr2)

arr1 = Array(repeating: 786, count:3)
print(arr1+arr2)

var vehicles: [String] = ["car","bike","truck"] //each element here is called array literal as it is a expression inside qoutaions.
print(vehicles)

//“Thanks to Swift’s type inference, you don’t have to write the type of the array if you’re initializing it with an array literal containing values of the same type. ”

var car = ["BMW","Ferrari","Ford","Honda"]


//Accessing and Modifying an Array
//You access and modify an array through its methods and properties, or by using subscript syntax.

//To find out the number of items in an array, check its read-only count property:
print("No.of items in car is:",car.count)

//“Use the Boolean isEmpty property as a shortcut for checking whether the count property is equal to 0:”

print(car.isEmpty)
car.append("Tesla")

//“Alternatively, append an array of one or more compatible items with the addition assignment operator (+=):”
car += ["Toyota","Suzuki"]

//“Retrieve a value from the array by using subscript syntax, passing the index of the value you want to retrieve within square brackets immediately after the name of the array:”
print(car[3])

//“You can use subscript syntax to change an existing value at a given index:”
car[6] = "Dstansu"
print(car)

//“You can also use subscript syntax to change a range of values at once, even if the replacement set of values has a different length than the range you are replacing”

car[4...6] = ["Suzuki","Tata","Porche"]
print(car)

//“To insert an item into the array at a specified index, call the array’s insert(_:at:) method:”
car.insert("Tarzan", at: 6)

//“Similarly, you remove an item from the array with the remove(at:) method. This method removes the item at the specified index and returns the removed item (although you can ignore the returned value if you don’t need it):”
car.remove(at: 5)
print(car)

//“If you want to remove the final item from an array, use the removeLast() method rather than the remove(at:) method to avoid the need to query the array’s count property. Like the remove(at:) method, removeLast() returns the removed item:”
car.removeLast()

for i in car {
    print(i, terminator: " ")
}

//“If you need the integer index of each item as well as its value, use the enumerated() method to iterate over the array instead. For each item in the array, the enumerated() method returns a tuple composed of an integer and the item. The integers start at zero and count up by one for each item; if you enumerate over a whole array, these integers match the items’ indices. You can decompose the tuple into temporary constants or variables as part of the iteration:”

print("\n")
for (indx,item) in car.enumerated() {
    print("Item \(indx+1): \(item)")
}
