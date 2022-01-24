import UIKit

let label = "The width is "
let width = 94
let widthText = label + String(width)

let explicitVariable: Float = 4

let appleCount = 3
let orangeCount = 5
let appleSummary = "I have \(appleCount) apples."
let fruitSummary = "I have \(appleCount + orangeCount) pieces of fruit."

let price: Float = 55.55
let gst: Float = 10.10
let sum = price + gst
let name = "Priyanka's total bill is " + String(sum)
let newName = "Priyanka's total bill is \(sum)"

let quotation = """
I said "I have \(appleCount) apples."
And then I said "I have \(appleCount + orangeCount) pieces of fruit."
"""

var shoppingList = ["catfish", "water", "tulips"]
shoppingList[1] = "bottle of water"

var occupationsDict = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
]
occupationsDict["Jayne"] = "Public Relations"
shoppingList.append("blue paint")
print(shoppingList)


//if and let together to work with values that are optional
//(?) after the type of a value to mark the value as optional.
var optionalString: String? = "Hello"
print(optionalString == nil)

var optionalName: String? = nil
var initialString = "Hello!"
if let name = optionalName {
    initialString = "Hello, \(name)"
}

// If the optional value is missing, the default value is used instead.
let nickName: String? = "Priyanka"
let fullName: String = "Priyanka Gondaliya"
let informalGreeting = "Hi \(nickName ?? fullName)"

let vegetable = "red pepper"
switch vegetable {
case "Potato":
    print("Pass")
case "cucumber", "Tomato":
    print("That would make a good sandwich.")
//let can be used in a pattern to assign the value that matched the pattern to a constant
case let suffix where suffix.hasSuffix("pepper"):
    print("Is it a spicy \(suffix)?")
default:
    print("Everything tastes good in soup.")
}

var firstNumber = 2
while firstNumber < 0 {
    firstNumber *= 2
}
print(firstNumber)

//loop runs at least once.
var secondNumber = 2
repeat {
    secondNumber *= 2
} while secondNumber < 0
print(secondNumber)

//range of indexes
var total = 0
for index in 0...4 {
    total += index
}
print(total)

func returnMenu(person: String, dinner: String) -> String {
    return "Hello \(person), today's menu is \(dinner)."
}
returnMenu(person: "Priyanka", dinner: "Pasta")

var numbersArray = [20, 19, 7, 12]
numbersArray.map({ (number: Int) -> Int in
    let result = number
    return result & 1 == 1 ? 0 : result
})

/* Exercise */
//Print Hello World in swift Play Ground
print("Hello world")

//Create variables of different types and print it
let floatVariable: Float = 4.35
let stringVariable: String = "Priyanka"
let intVariable = 8
let doubleVariable: Double = 3.14159
let booleanVariable: Bool = true

//Create one integer and perform addition with 5 to that and print values
let number = 5
let addition = number + 5
print(addition)

//There is one constant with value of interest rate (15%) create one playground for calculate interest for given amount and duration
let amount = 35
let duration = 2
let interestRate = 15
let interest = amount * duration * interestRate/100
print("interest for \(duration) days is \(interest)")

//Create example for String concate using operators
let myName: String = "Priyanka"
let surname: String = "Gondaliya"
var fullNmae = myName + surname
print(fullName)

//Create one example for show usage of operator's addition, multiplication, division for integers and floats
let ratePerHour: Float = 999.99
let hoursWorked: Int = 9
let extraHour: Int = 1
let totalCost: Float = ( Float(hoursWorked) + Float(extraHour)) * ratePerHour
let costPerMin: Float = ratePerHour / 60

// What is turnery operator and show example of usage?
let marks = 100
let result = (marks >= 33) ? "pass" : "fail"
print("You " + result + " the exam")

//Write a Swift program to create a new string made of a copy of the first two characters of a given string. If the given string is shorter than length 2, return whatever there is.
func copyOfTwoChars(_ input: String) -> String {
    let chars = [Character](input)
    let firstTwo = chars.prefix(2)
    if (chars.count < 2) {
        return input
    }
    return String(firstTwo)
}
print(copyOfTwoChars("Simform"))
print(copyOfTwoChars("z"))

//Write a Swift program to create a new string without the first and last character of a given string. The string length must be at least 2.
func withoutFirstAndLastChars(_ input: String) -> String {
    var newString = [Character](input)
    newString.removeFirst()
    newString.removeLast()
    return String(newString)
}
print(withoutFirstAndLastChars("Simform"))

//Write a Swift program that accept two strings and return their concatenation, except the first char of each string. The given strings length must be at least 1.
func concateTwoStr(_ firstStr: String, _ secondStr: String) -> String {
    var firstPart = [Character](firstStr)
    var secondPart = [Character](secondStr)
    firstPart.removeFirst()
    secondPart.removeFirst()
    return String(firstPart) + String(secondPart)
}
print(concateTwoStr("Swift", "Examples"))

//Write a Swift program to move the first two characters of a given string to the end. The given string length must be at least 2.
func moveCharsToEnd(_ ipString: String) -> String {
    var chars = [Character](ipString)
    let firstChar = chars.removeFirst()
    let secondChar = chars.removeFirst()
    chars.append(firstChar)
    chars.append(secondChar)
    return String(chars)
}
print(moveCharsToEnd("Swift"))

//Write a Swift program to test if a given string starts with "Sw"
func checkIfStringStartsWith(_ input: String) -> Bool {
    if input.hasPrefix("Sw") {
        return true
    } else {
        return false
    }
}
print(checkIfStringStartsWith("Swift"))

//Write a Swift program to create a new string made of the first and last n chars from a given string. The string length will be at least n.
func makeStrOfNChars(_ input: String, _ lastNchars: Int) -> String {
    let lastNcharsOfFirstpart = String([Character](input).prefix(lastNchars))
    let lastNcharsOfSecondpart = String([Character](input).suffix(lastNchars))
    return lastNcharsOfFirstpart + lastNcharsOfSecondpart
}
print(makeStrOfNChars("Simform Solutions", 3))

//Write a Swift program to check whether the first element and the last element of a given array of integers are equal. The array length must be 1 or more
func checkEqualElements(_ inputArray: [Int]) -> Bool {
    guard inputArray.count > 0 else {
        return false
    }
    if inputArray.first == inputArray.last {
        return true
    } else {
        return false
    }
}
print(checkEqualElements([1, 2, 3, 1]))

//Write a Swift program to create a new array, taking first two elements from a given array of integers. If the length of the given array is less than 2 use the single element of the given array
func firstTwoElements(_ inputArray: [Int]) -> [Int] {
    guard inputArray.count > 1 else {
        return inputArray
    }
    return Array(inputArray.prefix(2))
}
print(firstTwoElements([0, 1, 2, 3]))

//Write a Swift program to take one array and find out maximum number from that array
var elementsArray = [0, 50, 100, 20, 80, 150]
var largestNum = elementsArray.max()

//Write a Swift program to take one array and sort it in descending order.
let inputArray = [0, 5, 6, 2, 10]
let reversedArray = Array(inputArray.sorted().reversed())
print("Descending order: \(reversedArray)")

//Print all the numbers from listOfNumbers that are divisible by at least one number from divisors
var listOfNumbers = [1, 2, 3, 10, 100]
var divisorArray = [2, 5]
var output: String = ""
for value in listOfNumbers {
    for divisor in divisorArray {
        if value % divisor == 0 {
            output += "\(value),"
            break
        }
    }
}
print(output.dropLast(1))
//Print the powers of 2 that are less than or equal to N
var maxNum = 100
var inputNum = 1
while inputNum < maxNum {
    inputNum *= 2
    if (inputNum < maxNum) {
        print(inputNum)
    }
}

let givenNum: Int = 3
for _ in 1 ... givenNum {
    for _ in 1 ... givenNum {
        print("*", terminator: "")
    }
    print("\n")
}

for ipNum in 1 ..< 5 {
    for _ in 1 ... ipNum {
        print("*", terminator: "")
    }
    print("")
}

let thirdInput: Int = 5
for row in 1 ..< thirdInput {
    for _ in 1 ... thirdInput-row {
        print(" ", terminator: "")
    }
    for _ in 1 ... 2*row-1 {
        print("*", terminator: "")
    }
    print("\n")
}

//You are given a dictionary code of type [String:String] which has values for all lowercase letters. The codedictionary represents a way to encode a message. For example if code["a"] = "z" and code["b"] = "x" the encoded version if "ababa" will be "zxzxz". You are also given a encodedMessage which contains only lowercase letters and spaces. Use the codedictionary to decode the message and print it. Write a Swift program to decode the message and print final output string
 
var code = [
    "a" : "b",
    "b" : "c",
    "c" : "d",
    "d" : "e",
    "e" : "f",
    "f" : "g",
    "g" : "h",
    "h" : "i",
    "i" : "j",
    "j" : "k",
    "k" : "l",
    "l" : "m",
    "m" : "n",
    "n" : "o",
    "o" : "p",
    "p" : "q",
    "q" : "r",
    "r" : "s",
    "s" : "t",
    "t" : "u",
    "u" : "v",
    "v" : "w",
    "w" : "x",
    "x" : "y",
    "y" : "z",
    "z" : "a"
]
var encodedMessage = "uijt nfttbhf jt ibse up sfbe"
var decodedMessage = ""
func decodeMessage(encodedMessage: String, codeDict: [String:String]) -> String {
    var decodedMessage = ""
    for char in encodedMessage {
        if char == " " {
            decodedMessage.append(char)
        }
        for (key,value) in codeDict {
            if value.contains(char) {
                decodedMessage.append(key)
            }
        }
    }
    return decodedMessage
}
print(decodeMessage(encodedMessage: encodedMessage, codeDict: code))

//You are given an array of dictionaries. Each dictionary in the array contains exactly 2 keys “firstName” and “lastName”. Create an array of strings called firstNames that contains only the values for “firstName” from each dictionary.
var people: [[String:String]] = [
    [
        "firstName": "Calvin",
        "lastName": "Newton"
    ],
    [
        "firstName": "Garry",
        "lastName": "Mckenzie"
    ],
    [
        "firstName": "Leah",
        "lastName": "Rivera"
    ],
    [
        "firstName": "Sonja",
        "lastName": "Moreno"
    ],
    [
        "firstName": "Noel",
        "lastName": "Bowen"
    ]
]
var firstNameList: [String] = []
for person in people {
    for (key, value) in person {
        if key == "firstName" {
            firstNameList.append(value)
        }
    }
}
print(firstNameList)

//You are given an array of dictionaries. Each dictionary in the array contains exactly 2 keys “firstName” and “lastName”. Create an array of strings called fullNames that contains the values for “firstName” and “lastName” from the dictionary separated by a space.

var fullNameList: [String] = []
for person in people {
    fullNameList.append(person.values.joined(separator: " "))
}
print(fullNameList)

//You are given an array of dictionaries. Each dictionary in the array describes the score of a person. Find the person with the lowest score and print his full name
var peopleWithScores: [[String: String]] = [
    [
        "firstName": "Calvin",
        "lastName": "Newton",
        "score": "13"
    ],
    [
        "firstName": "Garry",
        "lastName": "Mckenzie",
        "score": "23"
    ],
    [
        "firstName": "Leah",
        "lastName": "Rivera",
        "score": "10"
    ],
    [
        "firstName": "Sonja",
        "lastName": "Moreno",
        "score": "3"
    ],
    [
        "firstName": "Noel",
        "lastName": "Bowen",
        "score": "16"
    ]
]

var lowestValue = 100000
var fullNm: String? = ""
for arrDict in peopleWithScores {
    for (key, value) in arrDict where key == "score" {
        if let num = Int(value) {
            if num < lowestValue {
                lowestValue = num
            }
        }
    }
}
print(lowestValue)

//You are given an array of dictionaries. Each dictionary in the array describes the score of a person. Print the leaderboard in the following format:
//1. full name - score
//2. ...
//...

for arrDict in peopleWithScores {
    if let first = arrDict["firstName"], let last = arrDict["lastName"], let score = arrDict["score"] {
        print("\(first) \(last) - \(score)")
    }
}

//You are given an array of integers. Find out the frequency of each one.The frequency of a number is the number of times it appears in the array.Print the numbers in ascending order followed by their frequency.
var arrayOfNumbers = [1, 2, 3, 2, 3, 5, 2, 1, 3, 4, 2, 2, 2]
var frequencyOfNumbers = [Int : Int]()
arrayOfNumbers.sort()
var currentNum = arrayOfNumbers[0]
var counter = 0
for number in arrayOfNumbers {
    if number == currentNum {
        counter += 1
        frequencyOfNumbers[number] = counter
    } else {
        currentNum = number
        counter = 1
        frequencyOfNumbers[number] = counter
    }
}
let keysList = frequencyOfNumbers.keys.sorted()
for key in keysList {
    if let value = frequencyOfNumbers[key] {
        print("(\(key): \(value))", terminator: " ")
    }
}

//Create an example of demonstrating How to declare optionals in swift?
//add ? besides the data type
var str: String? = nil

//What is force unwrapping in optionals show usage in example
//used when we know that there is some value in an optional variable
var color: String?
//print(color!) //If a nil optional is unwrapped, Unexpectedly found nil while unwrapping an Optional value
color = "Black";
print(color!) // Black

//Create one example of show usage of optional binding
//Create one example using if-let
//unwrappedpass can only be used in scope of the if block
var password: String? = "Priyanka"
if let unwrappedPass = password {
    print("Password is \(unwrappedPass)")
}
/*var newPassword:String?
if let unwrap = newPassword{ // Block unexecuted, as optional password is nil.
    print("value is not nil")
}*/

//Create one example using nil coalescing operator
//If a nil value is found when an optional value is unwrapped, an additional default value is supplied which will be used instead

var text: String?
var defaultValue = text ?? "Default value"
print(defaultValue) // Default value
text = "This is a string"
defaultValue = text ?? "Default String"
print(defaultValue) // This is a string

//Create one example using guard-let
//execute else if the condition is not met
//num will be available outside of the code block
let optionValueArray: [Int?]
optionValueArray = [1, 2, nil, 4, 5]
for num in optionValueArray {
    guard let num = num else {
        print("Priyanka")
        continue
    }
    print(num)
}

/* You are working on a smart-fridge. The smart-fridge knows how old the eggs and bacon in it are. You know that eggs spoil after 3 weeks (21 days) and bacon after one week (7 days).
Given baconAge and eggsAge(in days) determine if you can cook bacon and eggs or what ingredients you need to throw out.
If you can cook bacon and eggs print you can cook bacon and eggs.
If you need to throw out any ingredients for each one print a line with the text throw out <ingredient> (where <ingredient> is bacon or eggs) in any order. */
var baconAge = 3
var eggsAge = 2
var isBaconGood: Bool {
    if baconAge <= 7 {
        return true
    } else {
        return false
    }
}
var isEggsGood: Bool {
    if eggsAge <= 21 {
        return true
    } else {
        return false
    }
}
if isEggsGood && isBaconGood {
    print("you can cook bacon and eggs")
} else if !isEggsGood && !isBaconGood {
    print("throw out bacon and eggs")
} else if !isEggsGood {
    print("throw out eggs")
} else {
    print("throw out bacon")
}

/* You are given a year, determine if it’s a leap year. A leap year is a year containing an extra day. It has 366 days instead of the normal 365 days. The extra day is added in February, which has 29 days instead of the normal 28 days. Leap years occur every 4 years. 2012 was a leap year and 2016 will also be a leap year.
 The above rule is valid except that every 100 years special rules apply. Years that are divisible by 100 are not leap years if they are not also divisible by 400. For example 1900 was not a leap year, but 2000 was. Print Leap year! or Not a leap year! depending on the case. */
let year = 2017
if (year % 100 == 0) && (year % 400 != 0) {
    print("Not Leap Year!")
} else if (year % 4 == 0) {
    print("Leap Year!")
} else {
    print("Not Leap Year!")
}

/* You are working on a videogame where the character has a certain number of hitpoints(HP) ranging from 0 to 100.
 100 represents full health
 0 represents dead.
You want to add regenerating health to the game using the following rules:
HP always regenerates up to numbers of the form X0 (75 -> 80 , 32 -> 40 …)
When HP is below 20 it regenerates up to 20 (13 -> 20, 5 -> 20, …)
If the character has 0 HP then he doesn’t regenerate life (he’s dead)
Given the current hp of the character stored in a variable hp print the hp the player will have after regenerating life.  */
var hitPoints = 60
switch hitPoints {
case 0:
    print("he's dead")
case 1...20:
    print("20")
case 21...30:
    print("30")
case 31...40:
    print("40")
case 41...50:
    print("50")
case 51...60:
    print("60")
case 61...70:
    print("70")
case 71...80:
    print("80")
case 81...90:
    print("90")
case 91...100:
    print("full health")
default:
    print("hitpoints must be less than 100")
}

/* You are given three grades obtained by 3 students in a class stored in variables grade1, grade2, grade3 of typeDouble.
 You are also given your grade in the class stored in a variable yourGrade of type Double.
 Print above average if your grade is greater than the class average or below average” otherwise.
  Note: the average of the class includes your grade. */
var gradeOfFirstStudent: Double = 7.0
var gradeOfSecondStudent: Double = 9.0
var gradeOfThirdStudent: Double = 5.0
var yourGrade: Double = 8.0
var averageClassGrade: Double = (gradeOfFirstStudent + gradeOfSecondStudent + gradeOfThirdStudent + yourGrade) / 4.0
if yourGrade > averageClassGrade {
    print("above average")
} else {
    print("below average")
}

/*
 You have the cost of a meal at a restaurant stored in a variable mealCost of type Double.
 You would like to leave a tip of a certain percentage. The percentage is stored in a variable tip of type Int.
 Print the total cost of the meal.
 */
var mealCost: Double = 3.5
var tip: Int = 20
var totalCostOfMeal = mealCost * (Double(tip) / 100 + 1)
print(totalCostOfMeal)
