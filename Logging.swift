//
//  Logging.swift
//
//  Created by Val I on 2025-02-19.
//  Version 1.0
//  Copyright (c) 2025 Val I. All rights reserved.
//
//  This program Calculates how many logs 
//  can fit in a truck, which can carry up to 1100 kg
//  with possible log sizes of 0.25 m, 0.5 m or 1m.

import Foundation

// defines error for do catch.
enum InputError: Error {
    case invalidNumber
}

//  greets user
print("We will be calculating how many logs can fit in a truck")
print("The different log lengths are 0.25 m, 0.5 m or 1m.")
print("The truck can carry up to 1100 kg and The logs weigh 20 kg/m.")
print("What log lengths should I calculate?")

let WEIGHT_PER_M: Float = 20.0
let TRUCK_WEIGHT: Float = 1100.0
let QUART: Float = 0.25
let HALF: Float = 0.5
let FULL: Float = 1

let logLthStr = readLine()!

do{
    guard let logLthFlt = Float(logLthStr) else {
        throw InputError.invalidNumber
    }
    if (logLthFlt == FULL || logLthFlt == HALF || logLthFlt == QUART) {
        let LOG_WEIGHT = logLthFlt * WEIGHT_PER_M
        let LOG_AMOUNT = Int(TRUCK_WEIGHT / LOG_WEIGHT)
        print("It can fit \(LOG_AMOUNT) logs.")

    } else {
        print("This is not one of the lengths")
    }
}catch {
    print("Please enter a number")
}
