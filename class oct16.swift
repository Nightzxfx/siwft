main.swift

import Foundation

var myTown = Town()
myTown.printDescription()
myTown.population(by: 500)
let genericMonster = Monster()
genericMonster.town = myTown
genericMonster.terrorizeTown()

Monster.swift
class Monster {
    var town : Town?
    var name = "Monster"
    
    func terrorizeTown() {
        if town != nil {
            print ("\(name) is terrorizing a town!")
        } else {
            print ("\(name) hasn't found a town to terrorize yet..")
        }
        }
    }

Zombie.swift
import Foundation

class Zombie: Monster {
    var walkWithLimp = true
    
    final override func terrorizeTown() {
        town?.population(by: -10)
        super.terrorizeTown()
    }
}

Town.swift
struct Town {
    var population = 5_422
    var numberOfStopLights = 4
    
    func printDescription () {
        print ("Population: \(population) number of stoplights: \(numberOfStopLights)")
    }
}

