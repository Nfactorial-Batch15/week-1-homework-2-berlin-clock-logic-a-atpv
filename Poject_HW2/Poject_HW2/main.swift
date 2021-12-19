//
//  main.swift
//  Poject_HW2
//
//  Created by Алдияр Айтпаев on 02.12.2021.
//

import Foundation

let time = readLine()
let hms = time!.components(separatedBy: ":")


if Int(hms[0])! > -1 && Int(hms[1])! > -1 && Int(hms[2])! > -1 && Int(hms[0])! < 24 && Int(hms[1])! < 60 && Int(hms[2])! < 60 {

    func hoursToLetters(hours: Int) -> String {
        
        var letter = ""
        let numbers = [1, 2, 3, 4]
        
        var fourHoursCells = hours/5
        var singleHourCells = hours%5
        
        for _ in numbers {
            if fourHoursCells > 0 {
                letter += "R"
            }
            else {
                letter += "O"
            }
            fourHoursCells -= 1
        }
        for _ in numbers {
            if singleHourCells > 0 {
                letter += "R"
            }
            else {
                letter += "O"
            }
            singleHourCells -= 1
        }
        
        return letter
    }
   
    func minutsToLetters(minutes: Int ) -> String {
        var letter = ""
        let nums = [1,2,3,4]
        let nums2 = [1,2,3,4,5,6,7,8,9,10,11]
        
        var fiveMinutesCells = minutes/5
        var singleMinuteCells = minutes%5
        
        for i in nums2 {
            if fiveMinutesCells > 0 {
                if nums2[i-1] % 3 == 0 {
                    letter += "R"
                }
                else {
                    letter += "Y"
                }
            }
            else {
                letter += "O"
            }
            fiveMinutesCells -= 1
        }
        
        for _ in nums {
            if singleMinuteCells > 0 {
                letter += "Y"
            }
            else {
                letter += "O"
            }
            singleMinuteCells -= 1
        }
        
        
        return letter
    }
    
    func secondsToLetters(seconds: Int) -> String {
        
        if seconds%2 == 0 {
            return "Y"
        }
        else {
            return "O"
        }
    }
    
    let a = hoursToLetters(hours: Int(hms[0])!)
    let b = minutsToLetters(minutes: Int(hms[1])!)
    let c = secondsToLetters(seconds: Int(hms[2])!)
    print(c + a + b)
}
else {
    print("Wrong input. Try again")
}
