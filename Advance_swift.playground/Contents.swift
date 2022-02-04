import UIKit

/*  Collection types  */

//ARRAYS
var countryArray = ["India", "France", "Paris"]
countryArray.count  //length
countryArray[1] = "Italy"
print(countryArray)
countryArray.insert("Russia", at: 3)
countryArray[1...3] = ["Africa", "Canada"]
//iterating in array
for country in countryArray {
    print(country)
}
//if we need index and value for each item, we can use enumerated
for (index, country) in countryArray.enumerated() {
    print("\(index): \(country)")
}
countryArray.remove(at: 2)
countryArray.removeFirst()
countryArray.removeLast()

//SETS
var marksSet = Set<Int>()
var favSubjectsSet: Set<String> = ["Science", "Maths", "English"]     //can also ignore <String>
marksSet.insert(90)
marksSet = []
marksSet = [91, 92, 93, 94, 95, 96, 81, 91, 81]
marksSet.remove(4)
favSubjectsSet.isEmpty ? print("i do not have favorites") : print("i have favorites")
favSubjectsSet.insert("Hindi")
favSubjectsSet.remove("English")
for subject in favSubjectsSet.sorted() {
    print(subject)
}
favSubjectsSet.removeAll()
//fundamental set operations
let oddDigitsArray: Set = [1, 3, 5, 7, 9]
let evenDigitsArray: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbersArray: Set = [2, 3, 5, 7]
print("Union: \(oddDigitsArray.union(evenDigitsArray).sorted())")
print("Intersection: \(oddDigitsArray.intersection(evenDigitsArray).sorted())")
print("Subtraction: \(oddDigitsArray.subtracting(singleDigitPrimeNumbersArray).sorted())")
//values in either set, but not both
print("Symmetric diff: \(evenDigitsArray.symmetricDifference(singleDigitPrimeNumbersArray).sorted())")
print("oddDigits subset of evenDigits: \(oddDigitsArray.isSubset(of: evenDigitsArray))")     //use isStrictSubset() to determine whether a set is a subset but not equal to, a specified set.
print("Prime number set superset of oddDigits: \(singleDigitPrimeNumbersArray.isSuperset(of: oddDigitsArray))")    //can also use isStrictSuperset()
print("oddDigits disjoint of evenDigits: \(oddDigitsArray.isDisjoint(with: evenDigitsArray))\n") //two sets have no values in common

//DICTIONARIES
var numbersDict: [Int : String] = [:]
numbersDict[3] = "three"
var countryCodeDict = ["India": 91, "France": 33, "Italy": 39]
countryCodeDict.updateValue(49 , forKey: "France")
countryCodeDict["Italy"] = nil
print(countryCodeDict)
//accessing element by iterating dictionary
for (key, value) in countryCodeDict {
    print("\(key): \(value)")
}
//only for keys
for key in countryCodeDict.keys {
    print(key)
}
//only for values
for value in countryCodeDict.values {
    print(value)
}
//array instance either with keys or values
let countries = [String](countryCodeDict.keys)
let code = [Int](countryCodeDict.values)

/* Struct, Enum, Class */
//Class

class College {
    var noOfClassRooms = 11
}
var dduCollege = College()
var charusatCollege = dduCollege
charusatCollege.noOfClassRooms = 7
print(dduCollege.noOfClassRooms)
print(charusatCollege.noOfClassRooms)

//Structure

struct NewCollege {
    var classRoomCount = 5
}
var dditCollege = NewCollege()
dditCollege.classRoomCount = 12
var nirmaCollege = dditCollege
nirmaCollege.classRoomCount = 20
print(dditCollege.classRoomCount)
print(nirmaCollege.classRoomCount)

//enum

enum Climate {
   case India
   case America
   case Africa
   case Australia
}

var season = Climate.America
switch season {
   case .India:
      print("Climate is Hot")
   case .America:
      print("Climate is Cold")
   case .Africa:
      print("Climate is Moderate")
   case .Australia:
      print("Climate is Rainy")
}

/* Functions */
// function Syntax
func demoFunction(name: String) -> String {
   return name
}
print(demoFunction(name: "Priyanka"))
// function with parameters
func getMultiplication(numberOne: Int, numberTwo: Int) -> Int {
   return numberOne * numberTwo
}
print(getMultiplication(numberOne: 11, numberTwo: 12))


/* Exercise */
//Create a swift program to demonstrate swift class. Which has two variables inside class body. Access (Set its values and get its value.) these variables by creating one instance of class.

class Students {
    var studentName: String
    var marksOfStudent: Int
    init (studentName: String, marksOfStudent: Int) {
        self.studentName = studentName
        self.marksOfStudent = marksOfStudent
    }
}
class StudentMarks {
    var nameOfFirstStudent = "Priyanka"
    var marksOfFirstStudent = 85
    var nameOfSecondStudent = "Harsh"
    var marksOfSecondStudent = 80
}
let finalMarks = StudentMarks()
print("Mark of \(finalMarks.nameOfFirstStudent) is \(finalMarks.marksOfFirstStudent)")
print("Mark of \(finalMarks.nameOfSecondStudent) is \(finalMarks.marksOfSecondStudent)")

//Create a swift program to demonstrate usage of swift class for usage of multiple initializers. Create one initializer with two parameters your name and college and another initializer with your name and department. You can be able to access these properties using instance of class.
class MyDetails {
    var myName: String
    var myCollegeName = ""
    var myDepartment = ""
    
    init (myName: String, myCollegeName: String) {
        self.myName = myName
        self.myCollegeName = myCollegeName
    }
    init (myName: String, myDepartment: String) {
        self.myName = myName
        self.myDepartment = myDepartment
    }
}
var myDetails = MyDetails(myName: "Priyanka", myCollegeName: "DDU")
var myDeptDetails = MyDetails(myName: "Priyanka", myDepartment: "CE")
print("\(myDetails.myName) \(myDetails.myCollegeName) \(myDeptDetails.myDepartment)")

//Create a swift class without initializers and access (write, read) its properties using instance of class.
class Shape {
    var numberOfSides = 0
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}
var shapeA = Shape()
shapeA.simpleDescription()
shapeA.numberOfSides = 7
var shapeDescription = shapeA.simpleDescription()
shapeA.simpleDescription()

//Create a swift class which is having code to return square of given number and access this code using class instance.
class Square {
    var ipNum = 0
    var square: Int {
        return ipNum * ipNum
    }
}
var squareOfNum = Square()
squareOfNum.ipNum = 11
print("\(squareOfNum.square)")

//Create a swift class example to show use of swift inheritance. Your base class has some property access this property. In two different child classes and show its usage using the instances of both child classes.

class NewPerson {
    var firstName: String = "Priyanka"
    var lastName: String = "Gondaliya"
    let birthPlace: String
  
    init (birthPlace: String) {
        self.birthPlace = birthPlace
    }
}
class Student: NewPerson {
    var school: String = ""
}
let student = Student(birthPlace: "India")
student.lastName  = "Vankani"
student.firstName  = "Devanshee"
print(student.birthPlace)
print(student.firstName)
print(student.lastName)

class Teacher: NewPerson {
    var school: String = ""
}
let teacher = Student(birthPlace: "India")
student.lastName  = "Pandya"
student.firstName  = "Ekta"
print(student.birthPlace)
print(student.firstName)
print(student.lastName)

//Create a swift class example to show use of swift base class which have some implementation inside any method. Now demonstrate usage of overriding that method implementation.

class Flower {
    func getSmell() {
        print("nice")
    }
    func getColor() {
        print("White color")
    }
}
class Rose: Flower {
    override func getColor() {
        print("Red color")
    }
}
let flower = Flower()
let rose = Rose()
flower.getColor()
rose.getColor()
rose.getSmell()
//Create a swift class with an initializer in a manner that you can create this class using initializing value. And one function which takes int input and returns the power of class instance.
class Example {
    let inputNo: Int
    init (inputNo: Int) {
        self.inputNo = inputNo
    }
    func doPower(power: Int) -> Int {
        return Int(pow(Double(self.inputNo), Double(power)))
    }
}
let instance = Example(inputNo: 5)
let ipPower = 3
print(instance.doPower(power: ipPower))

//Create a person swift class with person name initializer and create one function to greet that person.
//Example: let person1 = Person(name: Joe)
 // Person1.greet() // This should print “Hello Joe”
class Person {
    let name: String
    init (name: String) {
        self.name = name
    }
    func displayMessage() {
        print("Hello \(name)")
    }
}
let firstPerson = Person(name: "Priyanka")
firstPerson.displayMessage()

//Create a swift class with some property. And then set its value using initializer of class, then perform below actions.
//let example1 = Example()
//Example1.a = “Hello”
//let example2 = example1
//example2.a = “Hi”
//print(example1.a)
//print(example2.a)
// Consider ‘a’ as string property of example class.
//--> Check these two print outputs and try to find out the reason for that output.
class NewExample {
    var message = ""
}
let objectOne = NewExample()
objectOne.message = "Hello"
let objectTwo = objectOne
objectTwo.message = "Hi"
print(objectOne.message)
print(objectTwo.message)



// Create one structure of type Work, which have some properties like work location, work hours and one string array of project names.
//Create a function inside structure which returns all project names for the person.
struct Work {
    var workLocation: String
    var workHours: Int
    var projectNames: [String]
    
    func getAllProjectNames() {
        print(projectNames)
    }
}
let projectArray = ["E-commerce app", "Fitonomy", "Vita", "Koda"]
let otherPerson = Work(workLocation: "Ahmedabad", workHours: 95, projectNames: projectArray)
otherPerson.getAllProjectNames()

// Create a structure example which demonstrates use of initializer in structures.
struct Circle {
    var pie: Double = 3.14
    var radius: Double
    
    init (radius: Double) {
        self.radius = radius
    }
}
let circleObject = Circle(radius: 12)
print("\(circleObject)\n")

// Create a structure program which can be initialized with parameters and it also should be able to initialized without parameters
//Taking above struct for this question also
struct NewCircle {
    var pi: Double = 3.14
    var radius: Double = 0
}
let firstCircleObject = NewCircle(radius: 20)
var secondCircleObject = NewCircle()
print("\(firstCircleObject),\(secondCircleObject)\n")
secondCircleObject.radius = 30
print("\(firstCircleObject),\(secondCircleObject)\n")

// Create one structure which have initializer which takes array of int as input returns two arrays one of all even numbers and another is all odd numbers
struct EvenAndOddNumbers {
    var inputArray: [Int]
    init (inputArray: [Int]) {
        self.inputArray = inputArray
    }
    var evenArray: [Int] {
        return inputArray.filter { $0 % 2 == 0 }
    }
    var oddArray: [Int] {
        return inputArray.filter { $0 % 2 != 0 }
    }
}
var newInputArray = [11, 12, 13, 14, 15]
var getFilteredNumbers = EvenAndOddNumbers(inputArray: newInputArray)
print("Even array: \(getFilteredNumbers.evenArray)")
print("Odd array: \(getFilteredNumbers.oddArray)\n")

// Create one swift structure program for person that contains basic details like name, age, gender. Then create one array of person with all details.
//Print all details of that array. Its size can be vary.
struct PersonDetails {
    var nameOfPerson: String
    var ageOfPerson: Int
    var genderOfPerson: String
}
var personArray: [PersonDetails] = []
personArray.append(PersonDetails(nameOfPerson: "Priyanka", ageOfPerson: 21, genderOfPerson: "Female"))
personArray.append(PersonDetails(nameOfPerson: "Mitsu", ageOfPerson: 21, genderOfPerson: "Female"))
for person in personArray {
    print("Name: \(person.nameOfPerson), Gender: \(person.genderOfPerson), Age: \(person.ageOfPerson)\n")
}
//Perform same example given in class question no 10 and check output using structure.
//Try to find difference between these two outputs and try to figure out the reason for that
//taking above structure PersonStruct as a structure for this particular question
var firstPersonObject = PersonDetails(nameOfPerson: "Dev", ageOfPerson: 21, genderOfPerson: "Male")
var secondPersonObject = firstPersonObject
secondPersonObject.nameOfPerson = "Harsh"
print("\(firstPersonObject) \(secondPersonObject)\n")

//convenience init
class HumanBeing {
    var name: String
    init (name: String) {
        self.name = name
    }
    convenience init() {
        self.init(name: "not set")
        // Convenience init call the designated init method
    }
}
let humanBeingObject = HumanBeing() // calls convenience init
let secondHumanBeingObject = HumanBeing(name: "Priyanka") // calls designated init
print(humanBeingObject.name)
print(secondHumanBeingObject.name)

/*  Enumerations  */

// Write swift program using enumerations to check week day from given number. Consider Monday as 1 and Sunday as 7.
//Example. It should return Monday or mon if I pass parameter 1 for get day name
enum WeekDays: Int {
    case monday = 1, tuesday, wednesday, thursday, friday, saturday, sunday
}
let currentDay: String
if let currentDay = WeekDays(rawValue: 2) {
    print(currentDay)
} else {
    print("Enter valid number")
}
// Create one enumeration program to return number of days in a month
enum DaysInMonth {
    case Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec
    var noOfDays: String {
        switch self {
        case .Feb:
            return "28 days"
        case .Jan, .Mar, .May, .Jul, .Aug, .Oct, .Dec:
            return "31 days"
        default:
            return "30 days"
        }
    }
}
let currentMonth = DaysInMonth.Feb
print(currentMonth.noOfDays)

// Write a swift program using enumerations to demonstrate Int enums
// Write a swift program using enumerations for learn and demonstrate enum cases with parameters (Enum with associated values)
enum BankDeposit {
    case inValue(Int, Int, Int)
    case inWords(String)
}
func makeDeposit(_ person: BankDeposit) {
    switch person {
    case .inValue(let hundred, let tens, let ones):
        print("deposited: \((hundred * 100) + (tens * 10) + (ones * 1))")
    case .inWords(let words):
        print("deposited: \(words)")
    }
}
var thirdPerson = BankDeposit.inValue(1,2,5)
makeDeposit(thirdPerson) //prints deposited: 125
var fourthPerson = BankDeposit.inWords("One Hundred Twenty Five")
makeDeposit(fourthPerson) //prints deposited: One Hundred Twenty Five

// Write a swift program to demonstrate string type enum
// Create an enum with its rawValues of type String and show usage of case to print value of case
enum MoveDirection : String {
    case forward = "you moved forward"
    case back = "you moved backwards"
    case left = "you moved to the left"
    case right = "you moved to the right"
    func printDirection() -> String {
        return self.rawValue
    }
}
var action = MoveDirection.right;
print(action.printDirection())// this will print out "you moved to the right"

// Write a swift program for enum with raw values
//instead of writing print direction direct print action.rawvalue
var anotherAction = MoveDirection.left;
print(anotherAction.rawValue)

// Create an enum with its rawValues of type String and show usage of case to print value of case

print(MoveDirection.back.rawValue)

/*  Property, Subscripts, Methods and Inheritance  */

// Create an example using swift to demonstrate use of get only properties. Create a class with a property which value cannot be set outside of class
//Output: for example, your class Demo has one property of string type then you can be able to set it within a class. If I try set it outside of class it must give an error

class DemoOfReadOnlyProperty {
    private(set) var favDish: String
    init (favDish: String) {
        self.favDish = favDish
    }
    func updateDish(newDish: String) {
        favDish = newDish
    }
}
var readOnlyVarObject = DemoOfReadOnlyProperty(favDish: "Pasta")
//readOnlyVarObject.favDish = "Pizza"
readOnlyVarObject.updateDish(newDish: "Pizza")
print("\(readOnlyVarObject.favDish)\n")


//Create a swift program to demonstrate usage of computed properties using getter and setter

class DemoOfComputedProperty {
    var radius: Double
    var area: Double {
        get {
            return 3.14 * radius * radius
        }
        set(newValue) {
            radius = sqrt(newValue / 3.14)
        }
    }
    init (radius: Double) {
        self.radius = radius
    }
}
var circle = DemoOfComputedProperty(radius: 0)
circle.area = 31400
print("Radius of Circle is \(circle.radius)")

//Create a swift program to show usage of stored properties
class DemoOfStoredProperty {
    var name: String
    var age: Int
    var festival: String
    var message: String {
        return "Hi I am \(name), and I am \(age) years old. I wish you all a very Happy \(festival)"
    }
    init (name: String, age: Int, festival: String) {
        self.name = name
        self.age = age
        self.festival = festival
    }
}
var person = DemoOfStoredProperty(name: "Priyanka", age: 20, festival: "Republic Day")
print(person.message)


//Create a swift program which has private properties which cannot directly be accessed. Means we cannot directly read or write it

struct DemoOfPrivateProperty {
    private var numberOfEdits = 0
    var value: String = "aa" {
        didSet {
            numberOfEdits += 1
        }
    }
}
//print(numberOfEdits)
var objectOfPrivateProperty = DemoOfPrivateProperty()
//print(objectOfPrivateProperty.numberOfEdits)
objectOfPrivateProperty.value += "bb"
objectOfPrivateProperty.value += "cc"
//print("Number of edits \(objectOfPrivateProperty.numberOfEdits)")

//Create one swift class which have two properties name and id, the class must have one initializer to set that properties.
//And create one array of that class types
class PersonClass {
    var id: Int
    var name: String
    init (name: String, id: Int) {
        self.id = id
        self.name = name
    }
}
let peopleArray = [PersonClass(name:"Priyanka", id: 1), PersonClass(name: "Harsh", id: 2)]
for person in peopleArray {
    print("\(person.id) \(person.name)")
}

//Create one example of usage of willSet and didSet
//willSet is called just before the value is stored and didSet is called immediately after the new value is stored.

//property observers: willset - called just before value is stored
//didset - called after value is stored
class StepCounter {
    var totalSteps: Int = 0 {
        willSet (newTotalSteps) {
            print("About to set totalSteps to \(newTotalSteps)")
        }
        didSet {
            if totalSteps > oldValue  {
                print("Added \(totalSteps - oldValue) steps")
            }
        }
    }
}
let stepCounter = StepCounter()
stepCounter.totalSteps = 200
stepCounter.totalSteps = 360
stepCounter.totalSteps = 896

//Create one lazy stored property in a class and show usage of it
//whose initial value isn't calculated until the first time it's used
//used to avoid unnecessary initialization
//stored property whose memory will be allocated only when the variable is actually used.

//when the initial value for a property is not known until after the object is initialized
struct InterviewCandidate {
    var isIOS: Bool?
    lazy var iOSResumeDescription: String = {
        return "I am an iOS developer"
    }()
    lazy var androidResumeDescription: String = {
        return "I am an android developer"
    }()
}
var candidate = InterviewCandidate()
candidate.isIOS = true
if candidate.isIOS! {
    print(candidate.iOSResumeDescription)
} else {
    print(candidate.androidResumeDescription)
}

//repeat
//Create one class as Base type Person which has common properties like name, occupation, etc. Create two child classes from the person
//which are Student and Employee and this two-child classes must have base properties and some other properties also.
//Example, student have college, but Employee have company. And demonstrate the usage of inheritance

class People {
    var name: String {
        return "Priyanka"
    }
    var occupation: String {
        return "Person"
    }
    func display() {
        print("Person class Info")
    }
}
class NewStudent : People {
    override var name: String {
        return "Abc"
    }
    override var occupation: String {
        return "Student"
    }
    var clg : String
    init (clg: String) {
        self.clg = clg
    }
    override func display() {
        super.display()
        print("Person name:\(super.name)  Occupation: \(super.occupation)")
        print("Student class Info")
        //print("\(self.name)")
    }
}
let studentObject = NewStudent(clg: "Abc")
studentObject.display()
print("Student name:\(studentObject.name) occupation: \(studentObject.occupation) Clg Name:\(studentObject.clg)")
class Emp: People {
    override var name: String {
        return "XYZ"
    }
    override var occupation: String {
        return "Employee"
    }
    var cname : String
    init (cname : String) {
        self.cname = cname
    }
    override func display(){
        super.display()
        print("\nPerson name:\(super.name)  Occupation: \(super.occupation)")
        print("Employee class Info")
    }
}
let employeeObject = Emp(cname : "Infosys")
employeeObject.display()
print("Employee name:\(employeeObject.name) occupation: \(employeeObject.occupation) Company Name:\(employeeObject.cname)")

// Create one structure to show usage of mutating function in swift
//mutating keyword allow to modify its property
struct Employees {
    var name : String
    var teamName : String
    init (name: String, teamName: String) {
        self.name = name
        self.teamName = teamName
    }
    mutating func changeTeam(newTeamName : String) {
        self.teamName = newTeamName
    }
}
var employee = Employees(name : "Priyanka", teamName: "Engineering")
print(employee.teamName)    //Engineering
employee.changeTeam(newTeamName : "Designing")
print(employee.teamName)    //Product

//Repeat
// Create one class inheritance demo to show usage of method overriding

class Base {
    var base : String
    init (base: String) {
        self.base = base
    }
    func display() {
        print(base);
    }
}
class Child : Base {
    var child : String
    init (child: String) {
        self.child = child
        super.init(base: "Hii Parent class")
    }
    override func display() {
        super.display()
        print(child)
    }
}
let child = Child(child: "Hello child class method override")
child.display()

//Create one swift class to show usage of type methods
//The 'class' keyword can be used in place of the 'static' keyword to allow subclass overriding of the type method.
class Math {
    static func abs(number: Int) -> Int {
      if number < 0 {
         return (-number)
      } else {
         return number
      }
   }
}
struct absoluteNumber {
    static func abs(number: Int) -> Int {
      if number < 0 {
         return (-number)
      } else {
         return number
      }
   }
}
let mathNum = Math.abs(number: -35)
let absnum = absoluteNumber.abs(number: -5)
print(mathNum)
print(absnum)

//Create one swift class which is having class method and static method. Then in one child class try to override that methods and check the output/ error.
class DemoOfTypeMethods {
    class func displayMessage() {
        print("Class method called")
    }
    static func anotherDisplayMessage() {
        print("Static method called")
    }
}
class ChildClassOfTypeMethod: DemoOfTypeMethods {
    override class func displayMessage() {
        print("Class method called inside child class")
    }
    //override static func anotherDisplayMessage() {}     //Cannot override static method
}
ChildClassOfTypeMethod.displayMessage()

//Create one example of subscript using array. Create one array of weekdays and one subscript func which takes int as argument and returns day of week
//output: WeekDays.subscript(day: 1) // will return Sunday
//Subscripts are used to access information from a collection, sequence and a list in Classes, Structures and Enumerations without using a method.

class DaysOfAWeek {
   private var days = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
   subscript (index: Int) -> String {
      get {
         return days[index]
      }
      set (newValue) {
         self.days[index] = newValue
      }
   }
}
var today = DaysOfAWeek()
print(today[2])
print(today[3])

//Create a swift program to show usage of subscript in string. I pass int argument and it returns the character at given position
class SubscriptExample {
    var myString = "Hello World!"
    subscript (index: Int) -> Character? {
        if index <= myString.count {
            return ([Character](myString))[index - 1]
        } else {
            return nil
        }
    }
}
var subscriptExampleObject = SubscriptExample()
let inputIndex = 5
if let currentChar = subscriptExampleObject[inputIndex] {
    print("Character at \(inputIndex) is \(currentChar.uppercased())\n")
} else {
    print("String index out of bounds\n")
}

//Create one array of type Person and create one subscript function which takes person name as input and returns person info like name, age, birthdate etc
class DemoOfSubscriptFun {
    var nameOfPerson: String
    var ageOfPerson: Int
    var birthDate: String
    var allObjectsOfPerson: [DemoOfSubscriptFun] = []
    
    init (name: String, age: Int, birthdate: String) {
        nameOfPerson = name
        ageOfPerson = age
        birthDate = birthdate
    }
    subscript (nameOfPerson: String) -> DemoOfSubscriptFun? {
        for person in allObjectsOfPerson {
            if person.nameOfPerson == nameOfPerson {
                return person
            }
        }
        return nil
    }
}
var allPersonArray: [DemoOfSubscriptFun] = []
//allPersonArray.append(name: "Priyanka", age: 21, birthdate: "27/07/2000")
allPersonArray.append(DemoOfSubscriptFun(name: "Dev", age: 21, birthdate: "27/07/2000"))
var somePersonClassObject = DemoOfSubscriptFun(name: "", age: 0, birthdate: "")
somePersonClassObject.allObjectsOfPerson = allPersonArray
let personName = "Dev"
if let currentPerson = somePersonClassObject[personName] {
    print("Name: \(currentPerson.nameOfPerson), Age: \(currentPerson.ageOfPerson), Birthdate: \(currentPerson.birthDate)\n")
} else {
    print("Cannot find person with name \(personName)\n")
}

//I have one key value pair array. Create one function using subscript which takes key as input and returns it’s value
class SubscriptDictExample {
    var givenDictionary = [1: "Hello", 2: "Hi", 3: "Hey"]
    subscript (givenKey: Int) -> String? {
        if let value = givenDictionary[givenKey] {
            return value
        } else {
            return nil
        }
    }
}
var subscriptDictObject = SubscriptDictExample()
var inputKey = 2
if let outputValue = subscriptDictObject[inputKey] {
    print("Key: \(inputKey), Value: \(outputValue)\n")
} else {
    print("Cannot find key!\n")
}

//mutating
struct Point {
    var x = 0.0, y = 0.0
    //instead of new point it modifies the point
    mutating func moveBy(x deltaX: Double, y deltaY: Double) {
        x += deltaX
        y += deltaY
    }
}
var somePoint = Point(x: 1.0, y: 1.0)
somePoint.moveBy(x: 2.0, y: 3.0)
print("The point is now at (\(somePoint.x), \(somePoint.y))")

/*  Extensions  */

//Create following string manipulation functions using string extensions
//A character in a string at 5th position
//Replace one character with other in a string
//Remove white spaces from string
//Get number of words in a string
extension String {
    func charAtFifthIndex() -> String {
        let charOfString = [Character](self)
        return String(charOfString[4])
    }
    func replaceCharAtSpecificIndex(index: Int, newChar: Character) -> String {
        var charOfString = [Character](self)
        charOfString[index - 1] = newChar
        return String(charOfString)
    }
    func removeWhiteSpaces() -> String {
        let charOfString = [Character](self)
        var finalString = ""
        for char in charOfString {
            if charOfString.isEmpty {
                finalString += String(char)
            }
        }
        return finalString
    }
    func getNoOfWords() -> Int {
        let stringArray = self.components(separatedBy: " ")
        return stringArray.count
    }
}
var firstString = "Priyanka"
var secondString = "Remove white spaces from string"
var thirdString = "Get number of words in a string"
print(firstString.charAtFifthIndex())
print(firstString.replaceCharAtSpecificIndex(index: 5, newChar: "n"))
print(secondString.removeWhiteSpaces())
print(thirdString.getNoOfWords())

//
extension Double {
    var km: Double { return self * 1000.0 }
    var m: Double { return self }
    var cm: Double { return self / 100.0 }
    var mm: Double { return self / 1000.0 }
    var ft: Double { return self / 3.28084 }
}
let oneInch = 25.4.mm
print("One inch is \(oneInch) meters")
let threeFeet = 3.ft
print("Three feet is \(threeFeet) meters")
let distance = 42.km + 195.m
print("A marathon is \(distance) meters long")

/*  Error Handling  */

// Create a password validation program. If length of password is less than 8 characters, it throws “Password too short” exception and
//if password is empty, throw “Empty password” exception
enum Password: Error {
    case passwdTooShort
    case passwdEmpty
}
class SetPassword {
    func isPasswdValid(_ password: String) throws -> Bool {
        guard password.count > 0 else {
            throw Password.passwdEmpty
        }
        guard password.count >= 8 else {
            throw Password.passwdTooShort
        }
        return true
    }
}
var newPassword = SetPassword()
let currentPassword = "Simform@123"
do {
    try newPassword.isPasswdValid(currentPassword)
    print("Current password is a valid password\n")
} catch Password.passwdTooShort {
    print("Password is too short\n")
} catch Password.passwdEmpty {
    print("Password can not be empty\n")
}

//Create a program for shopping cart. If desired quantity for an item is not available, throw exception
enum ShoppingCartError: Error {
    case stockNotAvailable
}
class ShoppingCart {
    var firstItemQuantity = 10
    var secondItemQuantity = 8
    var thirdItemQuantity = 5
    
    func buyFirstItem(quantity: Int) throws {
        guard quantity <= firstItemQuantity else {
            throw ShoppingCartError.stockNotAvailable
        }
        firstItemQuantity -= quantity
    }
    func buySecondItem(quantity: Int) throws {
        guard quantity <= secondItemQuantity else {
            throw ShoppingCartError.stockNotAvailable
        }
        secondItemQuantity -= quantity
    }
    func buythirdItem(quantity: Int) throws {
        guard quantity <= thirdItemQuantity else {
            throw ShoppingCartError.stockNotAvailable
        }
        thirdItemQuantity -= quantity
    }
}
var myShoppingCart = ShoppingCart()
var buyQuantity = 8
do {
    try myShoppingCart.buyFirstItem(quantity: buyQuantity)
    print("Succesfully bought \(buyQuantity) items from first item.")
} catch ShoppingCartError.stockNotAvailable {
    print("Cannot buy desired amount of items from first item.")
}
do {
    try myShoppingCart.buySecondItem(quantity: buyQuantity)
    print("Succesfully bought \(buyQuantity) items from second item.")
} catch ShoppingCartError.stockNotAvailable {
    print("Cannot buy desired amount of items from second item")
}
do {
    try myShoppingCart.buythirdItem(quantity: buyQuantity)
    print("Succesfully bought \(buyQuantity) items from third item.")
} catch ShoppingCartError.stockNotAvailable {
    print("Cannot buy desired amount of items from third item")
}
print("Total items available: First: \(myShoppingCart.firstItemQuantity), Second: \(myShoppingCart.secondItemQuantity), Third: \(myShoppingCart.thirdItemQuantity)\n")


//OPTIONAL CHAINING
//values are not declared in base class due to that it returns a nil value.
class Exam {
   var student: Toppers?
}
class Toppers {
   var name = "Intelligent"
}
let stud = Exam()
if let studname = stud.student?.name {
   print("Student name is \(studname)")
} else {
   print("Student name cannot be retrieved")
}

//error: Unexpectedly found nil while unwrapping an Optional value
class NewExam {
    var newStudent: NewTopper?
}
class NewTopper {
    var name = "Smart"
}
var stu = NewExam()
//var stuname =  stu.newStudent!.name

//Type Casting
class Employee {
    var name: String
    init (name: String) {
        self.name = name
    }
}
class Departments: Employee {
    var department: String
    init (name: String, department: String) {
        self.department = department
        super.init(name: name)
    }
}
class Financials: Employee {
    var salary: Int
    init(name: String, salary: Int) {
        self.salary = salary
        super.init(name: name)
    }
}
let empdetails = [
Departments (name: "Priyanka", department: "Software"),
Financials  (name: "Priyanka", salary: 10000),
Departments (name: "Harsh", department: "Healthcare"),
Financials  (name: "Harsh", salary: 500000)
]
var deptCount = 0
var financeCount = 0
for item in empdetails {
    if item is Departments {
        deptCount += 1
    } else if item is Financials {
        financeCount += 1
    }
}
print("The Employee Info contains \(deptCount) Departments and \(financeCount) Salaries")

//Downcasting
//as? when we are not sure if the downcast succeed or not
for item in empdetails {
    if let dept = item as? Departments {
        print("Name: \(dept.name), Department: \(dept.department)")
    } else if let fina = item as? Financials {
        print("Name: \(fina.name), Salary: \(fina.salary)")
    }
}

//as! operator only when we are sure that downcast will always succeed

//Nested Types
class AnotherStudent {
    enum StudentTypes {
        case Intelligent
        case Good
    }
    func name() -> StudentTypes {
        return .Intelligent
    }
}
class AnotherTeacher {
    let student = AnotherStudent()
    var type: AnotherStudent.StudentTypes
    init() {
        self.type = self.student.name()
    }
}
var result = AnotherStudent.StudentTypes.Good
print(result)

//ARC
class SecondStudent {
    let fullname: String
    init (name: String) {
        self.fullname = name
        print("\(name) is initialized")
    }
    deinit {
        print("\(fullname) is deinitialized")
    }
}
var instanceOfStudent: SecondStudent? =  SecondStudent(name: "Priyanka")
weak var secondInstance = instanceOfStudent
//assign a nil to an optional instanceOfStudent variable that means no instance of SecondStudent class
instanceOfStudent = nil

//weak reference
class ThirdStudent {
    var name: String
    //Student instance is a strong reference to Teacher instance
    var teacher: SecondTeacher?
    init (name: String) {
        self.name = name
    }
    deinit {
        print("\(name) is deinitialized")
    }
}
class SecondTeacher {
    let name: String
    //Teacher instance is not a strong reference to the Student instance
    weak var student: ThirdStudent?
    init (name: String) {
        self.name = name
    }
    deinit {
        print("\(name) is deinitialized")
    }
}
var studentObj: ThirdStudent?
var teacherObj : SecondTeacher?
studentObj = ThirdStudent(name: "Priyanka")
teacherObj = SecondTeacher(name: "Mansi")
studentObj?.teacher =  teacherObj
teacherObj?.student =  studentObj
studentObj = nil
teacherObj = nil

//unowned reference
class FourthStudent {
    var name: String
    var teacher: ThirdTeacher?
    init (name: String) {
        self.name = name
    }
    deinit {
        print("\(name) is deinitialized")
    }
}
class ThirdTeacher {
    let name: String
    unowned let student: FourthStudent
    init (name: String, student: FourthStudent) {
        self.name = name
        self.student = student
    }
    deinit {
        print("\(name) is deinitialized")
    }
}
var secondStuObj: FourthStudent?
secondStuObj = FourthStudent(name: "Priyanka")
secondStuObj?.teacher = ThirdTeacher(name: "Mansi", student: secondStuObj!)
secondStuObj = nil

@objc protocol Teams {
    @objc optional func turnCameraOn()
    @objc optional func turnCameraOff()
    static func joinMeeting()
}
class NewClass: Teams {
    static func joinMeeting() {
        print("joined")
    }
}
NewClass.joinMeeting()
