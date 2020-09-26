import UIKit

// MARK: Inheritence polymorphism

class BaseItem {
    func describeAppearance() {
        print("default")
    }
}

class Table : BaseItem {
    override func describeAppearance() {
        print("something is like table")
    }
}

class Chair: BaseItem {
    override func describeAppearance() {
        print("sonething is like chair")
    }
}

var item: BaseItem = Table()
item.describeAppearance()

item = Chair()
item.describeAppearance()
