//
//  Util.swift
//  CoreDataSimpleFetch
//
//  Created by Michael Teter on 2016-09-25.
//  Copyright © 2016 Michael Teter. All rights reserved.
//

import Foundation

let names = ["Alice", "Andrew", "Bob", "Betty", "Charles", "Charlotte", "David", "Dudley", "Edward", "Erin",
             "Frank", "Fred", "George", "Gilbert", "Henry", "Herbert", "Iris", "Ike", "John", "Jenny"]

func randomName() -> String {
    let rnd1 = Int(arc4random_uniform(UInt32(names.count)))
    let rnd2 = Int(arc4random_uniform(UInt32(names.count)))
    return "\(names[rnd1]) \(names[rnd2])"
}

func randomAge() -> Int {
    return Int(arc4random_uniform(UInt32(145))) // Since apparently modern humans can live to age 145
}
