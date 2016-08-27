//
//  List.swift
//  CustomCollections
//
//  Created by Vladyslav Anokhin on 8/25/16.
//  Copyright © 2016 Vladyslav Anokhin. All rights reserved.
//

import Foundation

class List<Type: Equatable> {
    var first: Node<Type>?
    var last: Node<Type>?
    
    var count: Int {
        if isEmpty {
            return 0
        } else if first == last{
            return 1
        } else {
            var count = 0
            var currecntNode = first
            while currecntNode != nil {
                count += 1
                currecntNode = currecntNode?.next
            }
            return count
        }
    }
    
    var isEmpty: Bool{
        return first == nil
    }
    
    func pushBack( item: Type ){
        let newNode = Node(data: item)
        
        //if list was empty
        if first == nil {
            first = newNode
        } else {
            last?.next = newNode
        }
        
        last = newNode
    }
    
    func pushFront( item: Type ){
        let newNode = Node(data: item)
        newNode.next = first
        
        first = newNode
        
        // list was empty
        if last == nil {
            last = newNode
        }
    }
    
    func insertItem( item: Type, beforeNode nextNode: Node<Type> ){
        
    }
    
    func insertItem( item: Type, afterNode prevNode: Node<Type> ){
        if isEmpty{
            return
        }
        
        if prevNode == last{
            pushBack( item )
        } else {
            let newNode = Node( data: item )
            newNode.next = prevNode.next
            prevNode.next = newNode
        }
        
    }
    
    func insertItem( item: Type, afterIndex index: UInt ){
        
    }
    
    func popBack(){
        if isEmpty{
            return
        }
        
        if first == last{
            last = nil
            first = nil
        } else {
            var currecntNode = first
            while currecntNode?.next != last {
                currecntNode = currecntNode?.next
            }
            
            last = nil
            currecntNode?.next = nil
            last = currecntNode
        }
    }
    
    func popFront(){
        if isEmpty{
            return
        }
        
        if first == last{
            last = nil
            first = nil
        } else {
            first = first?.next
        }
        
    }
    
    func deleteAfterNode( prevNode: Node<Type> ){
        
    }
    
    func deleteBeforeNode( nextNode: Node<Type> ){
        
    }
    
    func removeAll(){

    }
}

class Node<Type: Equatable>:NSObject {
    var value: Type?
    var next: Node?
    
    init(data:Type){
        value = data
    }
}


//func ==<Type: Equatable> (left: Node<Type>, right: Node<Type>) -> Bool {
//    return left.value == right.value
//}
