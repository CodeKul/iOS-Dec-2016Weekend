//: Playground - noun: a place where people can play

import UIKit

// 1) Write a programm to calculate sum of odd numbers from array

// 2) Write a programm to calculate sum of even numbers from array

// 3) Write a programm to calculate sum of first 50 odd numbers


var myArray = [1,22,23,43,54,65,76,12,11,33,55,66,87,90,3]

// sum of odd numbers && sum of even numbers

var index = 0
var oddResult = 0
var evenResult = 0
while index < myArray.count {
    
    if((myArray[index]%2)==1){
        oddResult += myArray[index]
    }
    else{
        evenResult += myArray[index]
    }
    index += 1
}

print("sum of odd numbers = \(oddResult)")

print("sum of odd numbers = \(evenResult)")

// sum of first 50 odd numbers

var sum = 0
var count = 0
var number = 0

while (count < 50){
    
    if(number%2 == 1){
        sum += number
        count += 1
    }
    
    number += 1
}

print("sum of first 50 odd numbers = \(sum)")
