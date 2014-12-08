import UIKit

/*

Strings

*/

func favoriteCheeseStringWithCheese(cheese: String) -> String {
   let cheese = "cheddar"
    return cheese
}

let cheese = "cheddar"
let fullSentence = "My favorite cheese is \(cheese)"
// Make fullSentence say "My favorite cheese is cheddar."

/*

Arrays & Dictionaries

*/

var numberArray = [1, 2, 3, 4]
    numberArray.append(5)
print(numberArray)



var numberDictionary = [1 : "one", 2 : "two", 3 : "three", 4 : "four"]
// Add 5 : "five" to this dictionary
// WORK HERE
numberDictionary[5] = "five"
    print(numberDictionary)
/*

Loops

*/

// Use a closed range loop to print 1 - 10, inclusively
var numberVariable = 1
var numbersOneThroughTen = Array<Int>()
for numberVariable in 1...10 {
        numbersOneThroughTen.append(numberVariable)
    }
    println(numbersOneThroughTen)

var numbersOneThroughTenAgain = Array<Int>()
for numberVariable in 1..<11 {
    numbersOneThroughTenAgain.append(numberVariable)
    }
    println(numbersOneThroughTenAgain)
    
// Use a half-closed range loop to print 1 - 10, inclusively
// WORK HERE

let worf = [
    "name": "Worf",
    "rank": "lieutenant",
    "information": "son of Mogh, slayer of Gowron",
    "favorite drink": "prune juice",
    "quote" : "Today is a good day to die."]

let picard = [
    "name": "Jean-Luc Picard",
    "rank": "captain",
    "information": "Captain of the USS Enterprise",
    "favorite drink": "tea, Earl Grey, hot"]

let characters = [worf, picard]

func favoriteDrinksArrayForCharacters(characters:Array<Dictionary<String, String>>) -> Array<String> {
    // return an array of favorite drinks, like ["prune juice", "tea, Earl Grey, hot"]
var favoriteDrinks = Array<String>()
    for dictionary in characters {
        favoriteDrinks.append(dictionary["favorite drink"]!)
        }
    return favoriteDrinks
}

let favoriteDrinks = favoriteDrinksArrayForCharacters(characters)

favoriteDrinks

/*

Functions

*/

// Make a function that inputs an array of strings and outputs the strings separated by a semicolon

var strings = ["milk", "eggs", "bread", "challah"]
var joiner = ";"
let joinedStrings = joiner.join(strings)

func printNewList() {
    println("\(joinedStrings)")
}

let expectedOutput = "milk;eggs;bread;challah"

/*

Closures

*/

let cerealArray = ["Golden Grahams", "Cheerios", "Trix", "Cap'n Crunch OOPS! All Berries", "Cookie Crisp"]

let cerealsSortedAlphabetically = sorted(cerealArray, <)

// Use a closure to sort this array alphabetically

