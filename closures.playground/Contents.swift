import UIKit

class ClosureQueue {
    var closureArray = [()-> Void]()
    
    func initClousers(_ times: Int) {
        guard times >= 1 else {
            print("You need to set at least 1 item to specify closure")
            return
        }
        
        for index in 1...times {
            let currentClosure: () -> Void = {() in
                print(index)
                sleep(1)
            }
            closureArray.append(currentClosure)
        }
    }
    
    func perform() {
        guard closureArray.count != 0 else {
            print("Nothing to perform")
            return
        }
        
        for closure in closureArray {
            closure()
        }
    }
}


let closureQueue = ClosureQueue()
closureQueue.initClousers(5)
closureQueue.perform()
