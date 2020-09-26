import UIKit


// Mark: Protocol Polymorphism
protocol Animal {
    func doSound()
}

class Dog : Animal {
    func doSound() {
        print("gav gav")
    }
}

class Cat: Animal {
    func doSound() {
        print("myau myau")
    }
}

var animal: Animal = Dog()
animal.doSound()
animal = Cat()
animal.doSound()


