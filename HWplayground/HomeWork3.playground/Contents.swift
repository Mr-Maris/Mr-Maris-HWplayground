import UIKit

/*
 Exercise 1
 The user opens a deposit in the bank for 5 years in the amount of 500_000 Eur. The interest rate per annum \(rate). Calculate the amount of income \(profit) at the end of the \(period).
 for _ in 1...period{
 }
 print("Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(deposit) Eur !")
 */

var period = 5
var deposit = 500_000
var rate = 0.01
var profit = 0

for _ in 1...period{
    deposit += Int(Double(deposit) * Double(rate))
    profit += Int(Double(deposit) * Double(rate))
}
print("Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(deposit) Eur !")

/*
 Exercise 2
 Create an integer array with any set of numbers and  print("My even numbers are: \(evenNumber)")
 Use a % inside the for loop.
 */

let numArray = [5,6,7,10,11,22,23,33,44,55,60]

for evenNumber in numArray {
    if evenNumber % 2 == 0 {
        print("My even numbers are: \(evenNumber)")
    }
}

/*
 Exercise 3
 Inside the for loop create randomNumber for the random Int calculation. Calculate and print("Number 5 will be after \(counter) shuffles"). Don't forget to make a break inside the if statement.
 */

var counter = 0
for _ in 1...10 {
    let randomNumber = Int.random(in: 1...10)
    if randomNumber == 5 {
        counter += 1
        break
    } else {
        counter += 1
    }
}
print("Number 5 will be after \(counter) shuffles.")

/*
 Exercise 4
 A bug is climbing to a 10-meter electric post. During the day, bug can climb two meters, during the night she slides down to 1 meter. Determine with the help of the cycle how many days bug will climb on the top of the post. Think about which loop to use in which situation. print("bug will spend \(numberOfDays)) to reach top of the post")
 */

var post = 10
var climb = 0
var numberOfDays = 0

for _ in 1...post {
    climb += 2
    numberOfDays += 1
    if climb == 10 {
        break
    }
    climb -= 1
}
print("The bug will spend \(numberOfDays) days to reach the top of the post.")
