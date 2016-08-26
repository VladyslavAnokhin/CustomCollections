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
    
    var count: UInt = 0
    
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
        
    }
    
    func insertItem( item: Type, afterIndex index: UInt ){
        
    }
    
    func popBack( item: Type ){
        
    }
    
    func popFront( item: Type ){
        
    }
    
    func deletItem( item: Type, beforeNode nextNode: Node<Type> ){
        
    }
    
    func deletItem( item: Type, afterNode prevNode: Node<Type> ){
        
    }
    
    func deletItem( item: Type, afterIndex index: UInt ){
        
    }
    
}

class Node<Type: Equatable>: Equatable {
    var value: Type?
    var next: Node?
    
    init(data:Type){
        value = data
    }
}


func ==<Type: Equatable> (left: Node<Type>, right: Node<Type>) -> Bool {
    return left.value == right.value
}
