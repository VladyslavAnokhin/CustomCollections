//
//  List.swift
//  CustomCollections
//
//  Created by Vladyslav Anokhin on 8/25/16.
//  Copyright © 2016 Vladyslav Anokhin. All rights reserved.
//

import Foundation

class Node<Type> {
    var value: Type?
    var next: Node?
}

class List<Type> {
    var first: Node<Type>?
    var last: Node<Type>?
    
    var count: UInt = 0
    
    var isEmpty: Bool{
        return true
    }
    
    func pushBack( item: Type ){
        
    }
    
    func pushFront( item: Type ){
        
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