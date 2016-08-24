//
//  AbstractDataTypeProtocol.swift
//  CustomCollections
//
//  Created by Vladyslav Anokhin on 8/24/16.
//  Copyright © 2016 Vladyslav Anokhin. All rights reserved.
//

import Foundation

protocol AbstractDataTypeProtocol {
    // remove all elements from collection
    func clear() -> Void
    
    // says if collection have any object
    func isEmpty() -> Bool
    
    // adds value to the end of collection
    func push<T>(object:T) -> Void
    
    // remove value from the end of collection
    func pop() -> Void
}