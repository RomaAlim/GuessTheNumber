//
//  main.swift
//  Unknown Number
//
//  Created by Ramazan Kalabay on 17.12.2023.
//

import Foundation

let randomNumber = UInt8.random(in: 1...100)

print("Компьютер случайным образом загадал число. Вам требуется отгадать его.")
print("Введите число между 1-100, и нажмите Enter.")
var myNumber: String?
var isWin = false
repeat {
    // попытка преобразования введенного значения к UInt8
    guard let userNumber = UInt8(readLine() ?? "") else {
        print("Вы ввели некорректное число. Попробуйте снова")
continue }
    // проверка введенного числа
    if userNumber < randomNumber{
        print("Ваш вариант меньше загаданного числа")
    } else if userNumber > randomNumber {
        print("Ваш вариант больше загаданного числа")
    } else {
        print("Вы угадали")
isWin = true }
} while !isWin

//repeat{
//    myNumber = readLine()
//    guard let userNumber = UInt8(readLine() ?? "") else {
//            print("Вы ввели некорректное число. Попробуйте снова")
//    continue }
//
//    if UInt8(myNumber!)! == randomNumber{
//        print("Вы угадали")
//        isWin = true
//    } else if UInt8(myNumber!)! >= randomNumber{
//        print("Ваш вариант ,больше загаданного числа")
//    } else if UInt8(myNumber!)! <= randomNumber{
//        print("Ваш вариант меньше загаданного числа")
//    }
//} while randomNumber != UInt8(myNumber!)


