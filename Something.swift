
import Foundation

//actions that a player can take
struct Actions {
    var method: String!
    var hotkey: String! 
    var actionname: String!
}

// This is player class with health and a name
class Player {
    var name: String!
    var health: Double!
    var actions : Array<Actions> = []
    var location = (0,0)
    
    init(name: String, health: Double) {
        self.name = name
        self.health = health
        self.actions.append(Actions(method: "method", hotkey: "k", actionname: "Kill"))
    }
    func isnotdead(health: Double) -> Double {
        if health > 0 {
        }
        else {
            print("You're dead bruh")
        }
        return health
    }
    func MoveSouth(){
        self.location = (self.location.0, self.location.1-1)
    }
    func MoveWest(){}
}
struct Enemy {
    var damage: Double! 
    var health: Double!
    var description: String!
}

//enemies
var Terrorist = Enemy(damage: 67, health: 100, description: "A gun wielding terrorist abushes you screaming 'allah ackbar!'")
var LargeSpider = Enemy(damage: 76, health: 100, description: "A large spider crawled down!")

let Thai = Player(name: "Thai", health: 12)




//This will be my map.

class WorldMap<T> {
    
    var array : Array<Array<T>>
    let rows : Int
    let columns : Int
    
    init(rows : Int, columns : Int, initialValue: T) {
        self.rows = rows
        self.columns = columns
        self.array = Array<Array<T>>()
        
        for row in 0...rows {
            array.append(Array(repeating: initialValue, count: self.columns))
        }
    }
    
    subscript(row : Int, column : Int) -> T {
        get {
            return self.array[row][column]
        }
        set(value) {
            self.array[row][column] = value
        }
    }
}

//Still trying to make the player move
enum Direction : Int {
}



