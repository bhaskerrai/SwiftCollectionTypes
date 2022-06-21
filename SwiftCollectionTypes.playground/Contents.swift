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

var d = ["tenet","batman begins","dark knight"]
print(d.contains("dark knight"))

d[d.count-1] = "prestige"
print(d)



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


//“Sets
//A set stores distinct values of the same type in a collection with no defined ordering. You can use a set instead of an array when the order of items isn’t important, or when you need to ensure that an item only appea”

//“Set Type Syntax
//The type of a Swift set is written as Set<Element>, where Element is the type that the set is allowed to store. Unlike arrays, sets don’t have an equivalent shorthand form.”

var set = Set<Character>() //empty set

set.insert("B")
set.insert("C")
print("The set now has \(set.count) element which is \(set)")

//set.append("b") //set don't have 'append' so use 'insert'.
set = [] //now the set is empty

//“Creating a Set with an Array Literal
//You can also initialize a set with an array literal, as a shorthand way to write one or more values as a set collection.”

var setOfMovies: Set<String> = ["Tenet","Prestige","Interstellar"]

//“A set type can’t be inferred from an array literal alone, so the type Set must be explicitly declared. However, because of Swift’s type inference, you don’t have to write the type of the set’s elements if you’re initializing it with an array literal that contains values of just one type.”

var movies: Set = ["Tenet","Prestige","Interstellar"]

//Accessing and Modifying a Set

/*You access and modify a set through following methods and properties:
 1. count
 2. insert
 3. remove
 4. removeAll
 5. isEmpty
 6. contains
 */

if movies.contains("Interstellar"){
    print("This Nolan movie has score by Zimmer.")
}


//“Swift’s Set type doesn’t have a defined ordering. To iterate over the values of a set in a specific order, use the sorted() method, which returns the set’s elements as an array sorted using the < operator.”

for i in movies.sorted(){
    print(i)
}


//“Performing Set Operations
//You can efficiently perform fundamental set operations, such as combining two sets together, determining which values two sets have in common, or determining whether two sets contain all, some, or none of the same values.”

let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

print(oddDigits.union(evenDigits).sorted())

/*
Use the “is equal” operator (==) to determine whether two sets contain all of the same values.

Use the isSubset(of:) method to determine whether all of the values of a set are contained in the specified set.

Use the isSuperset(of:) method to determine whether a set contains all of the values in a specified set.

Use the isStrictSubset(of:) or isStrictSuperset(of:) methods to determine whether a set is a subset or superset, but not equal to, a specified set.

Use the isDisjoint(with:) method to determine whether two sets have no values in common.
*/
var bigSet: Set = [0,1,2,3,4,5,6,7,8,9,10]

print(bigSet.isSuperset(of: oddDigits))
print(evenDigits.isSubset(of: bigSet))
print(oddDigits.isDisjoint(with: evenDigits))

//Dictionary Type Shorthand Syntax
//The type of a Swift dictionary is written in full as Dictionary<Key, Value>, where Key is the type of value that can be used as a dictionary key, and Value is the type of value that the dictionary stores for those keys.


//You can also write the type of a dictionary in shorthand form as [Key: Value]. Although the two forms are functionally identical, the shorthand form is preferred and is used throughout this guide when referring to the type of a dictionary.
  

var languages: [Int: String] = [:] //empty list

languages[1] = "Python"
print(languages)

languages = [:] //again empty
print(languages)

/*
 Creating a Dictionary with a Dictionary Literal
 You can also initialize a dictionary with a dictionary literal, which has a similar syntax to the array literal seen earlier. A dictionary literal is a shorthand way to write one or more key-value pairs as a Dictionary collection.

 A key-value pair is a combination of a key and a value. In a dictionary literal, the key and value in each key-value pair are separated by a colon. The key-value pairs are written as a list, separated by commas, surrounded by a pair of square brackets:

*/

languages = [1:"Python", 2:"Swift", 3:"JavaScript", 4:"Java", 5:"C++"]
print(languages)

//“As with arrays, you don’t have to write the type of the dictionary if you’re initializing it with a dictionary literal whose keys and values have consistent types. The initialization of airports could have been written in a shorter form instead:”

var itemsToBring = [1:"Eggs", 2:"Milk", 3:"Bread"]


//Accessing and Modifying a Dictionary

/*You access and modify a set through following methods and properties:
 1. count
 2. isEmpty
 3. remove
 4. updateValue
 */

//you can add element to a dictionary like this:

itemsToBring[4] = "Fruits"

//“You can also use subscript syntax to change the value associated with a particular key:”

itemsToBring[4] = "Vegetables"

//“As an alternative to subscripting, use a dictionary’s updateValue(_:forKey:) method to set or update the value for a particular key. Like the subscript examples above, the updateValue(_:forKey:) method sets a value for a key if none exists, or updates the value if that key already exists. Unlike a subscript, however, the updateValue(_:forKey:) method returns the old value after performing an update. This enables you to check whether or not an update took place.

itemsToBring.updateValue("Vitamins", forKey: 5)
//itemsToBring.updateValue("Fruits", forKey: 4)

print(itemsToBring)

if let oldValue = itemsToBring.updateValue("Fruits", forKey: 4) {
    print(itemsToBring)
    print("The old value for key 4 was \(oldValue).")
}

//You can use subscript syntax to remove a key-value pair from a dictionary by assigning a value of nil for that key:

itemsToBring[4] = nil
print(itemsToBring)

//“Alternatively, remove a key-value pair from a dictionary with the removeValue(forKey:) method. This method removes the key-value pair if it exists and returns the removed value, or returns nil if no value existed:”

itemsToBring.removeValue(forKey: 5)

//“Iterating Over a Dictionary
//You can iterate over the key-value pairs in a dictionary with a for-in loop. Each item in the dictionary is returned as a (key, value) tuple, and you can decompose the tuple’s members into temporary constants or variables as part of the iteration:”


for (k, vl) in itemsToBring{
    print(k,":",vl)
}

//“You can also retrieve an iterable collection of a dictionary’s keys or values by accessing its keys and values properties:”

for k in languages.keys{
    for vl in languages.values{
        print(k,"=",vl)
    }
}

let k = [Int](languages.keys) //this makes a array of all the keys of dictionary.
let vl = [String](languages.values) //this makes a array of all the values of dictionary.

print(type(of: k))

//“Swift’s Dictionary type doesn’t have a defined ordering. To iterate over the keys or values of a dictionary in a specific order, use the sorted() method on its keys or values property.”

