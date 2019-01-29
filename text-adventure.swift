//: A SpriteKit based Playground

import Foundation

// This is player class with health and a name
class Player {
    var name: String
    var health: Double
    
    init(name: String, health: Double) {
        self.name = name
        self.health = health
    }
    
    func getName() -> String {
        return "Your name is \(name)"
    }
    func isnotdead(health: Double) -> Double {
    if health > 0 {
    
    }
    else {
    print("You're dead bruh")
    }
        return health
    }
    
}

struct Enemy {
    var damage: Double
    var health: Double
    var description: String
    
}


//enemies
var Terrorist = Enemy(damage: 67, health: 100, description: "A gun wielding terrorist abushes you screaming 'allah ackbar!'")
var LargeSpider = Enemy(damage: 76, health: 100, description: "A large spider crawled down!")

class Actions {
    
    //Attack Function
    
}

//room, I am trying to make a 2D array of structs. 
struct WorldMap {
    
}



// option directions
enum Direction {
    case North
    case East
    case West
    case South
}




