import UIKit

/*
 Ex1:
 1.1 Declare two variables of type Float and assign each a number with a fractional part - for example, 3.14 or 42.0
 1.2 Declare another variable of type Double and assign it the sum of two variables of type Float
 1.3 Print the result with print ()
 */
var number1: Float = 3.14
var number2: Float = 42.0
var numberSum: Double = Double(number1 + number2)
print(numberSum)
/*
 Ex2:
 2.1 Create a variable numberOne and assign any integer value to it
 2.2 Create another integer variable numberTwo and assign it any value less than numberOne
 2.3 Set the new integer constant result to the result of dividing numberOne by numberTwo
 2.4 Assign the new integer constant remainder the remainder of numberOne divided by numberTwo
 2.5 Output to the console the message: "When dividing <...> by <...>, the result is <...>, the remainder is <...>".
 */
var numberOne: Int = 4
var numberTwo: Int = 2
let result = numberOne / numberTwo
let remainder = numberOne % numberTwo
print("When dividing \(numberOne) by \(numberTwo), the result is \(result), the remainder is \(remainder).")
/*
 Ex3:
 You need to buy several new MacBook Pro, each cost 1000 EUR.
 If you are buying 5 and more, with discount it will cost you 900 each! If you are buying 10 and more with discount it will cost you 850 each! Create if-else statements to check Conditions of buying in different amount!
 print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")
 */
var qty = 100
var price = 1000

if qty < 5 {
    price = 1000
}else if qty < 10 {
    price = 900
}else{
    price = 850 }
var totalSum = qty * price
print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")
/*
 Ex4:
 Create String userInputAge and put value "33a" and convert to Int to make Fatal error: Unexpectedly found nil while unwrapping an Optional value!
 Fix this Fatal error inside the if-else statements to print whenever this age can be converted to Int or not!
 */
var userInputAge = "33a"
var convertToInt = Int(userInputAge)

if convertToInt == nil {
    print("This age can not be converted!")
} else {
    print("convertToInt:", convertToInt as Any)
}
/*
 Ex5:
 Calculate the number of years, months, days from you birthday to current date.
 print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth)")
 */
let formatter = DateFormatter()
formatter.dateFormat = "dd.MM.yyyy"

let date = Date()
let calendar = Calendar.current

let birthDate = formatter.date(from: "29.06.1992")

let totalYearsFromBirth = calendar.dateComponents([.year], from: birthDate!, to: date).year
let totalMonthFromBirth = calendar.dateComponents([.month], from: birthDate!, to: date).month
let totalDaysFromBirth = calendar.dateComponents([.day], from: birthDate!, to: date).day

print("Total years: \(totalYearsFromBirth!) , total months: \(totalMonthFromBirth!), total days: \(totalDaysFromBirth!)")
/*
 Ex6:
 Use Exercise 5 monthOfBirth to calculate in which quarter of the year you were born.
 Use switch case to print("I was born in the ... quarter")
 */
let monthOfBirth = calendar.component(.month, from: birthDate!)

switch monthOfBirth {
case 1, 2, 3:
    print("I was born in the first quarter")
case 4, 5, 6:
    print("I was born in the second quarter")
case 7, 8, 9:
    print("I was born in the third quarter")
case 10, 11, 12:
    print("I was born in the fourth quarter")
default:
    print("Please provide month of birth.")
}
