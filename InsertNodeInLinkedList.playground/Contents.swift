import UIKit

class Node<T: Equatable>{
    var value:T?
    var nextNode:Node?
}

class LinkedList<T: Equatable>{
    var headNode = Node<T>()
    
    func insert(value: T){
        
        if headNode.value == nil{
            headNode.value = value
        }else{
            var lastNode = headNode
            while lastNode.nextNode != nil {
                lastNode = lastNode.nextNode!
            }
            let newNode: Node = Node<T>()
            newNode.value = value
            lastNode.nextNode = newNode
        }
    }
    
    func printAllKeys() {
        var currentNode: Node! = headNode
        print("---------------")
        while currentNode != nil && currentNode.value != nil {
            print("The item is \(currentNode.value!)")
            currentNode = currentNode.nextNode
        }
    }
}

var list = LinkedList<Int>()
list.insert(value: 5)
list.insert(value: 10)
list.printAllKeys()


