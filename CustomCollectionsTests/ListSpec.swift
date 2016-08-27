//
//  ListSpec.swift
//  CustomCollections
//
//  Created by Vladyslav Anokhin on 8/25/16.
//  Copyright © 2016 Vladyslav Anokhin. All rights reserved.
//

import Foundation
import Nimble
import Quick
@testable import CustomCollections

class ListSpec: QuickSpec {
    
    override func spec() {
        describe("List"){
            var sut: List<Int>!
            
            beforeEach(){
                sut = List<Int>()
            }
            
            it("Should not be nil after init") {
                expect(sut).toNot(beNil())
            }
            
            it("Should be empty after init"){
                expect(sut.isEmpty).to(beTruthy())
            }
            
            it("count should be 0"){
                expect(sut.count).to(equal(0))
            }
            
            //MARK: - When push new value in list
            describe("When push new value in list", {
                
                //MARK: push value in empty list
                describe("push value in empty list", {
                    context("push back", {
                        
                        beforeEach({
                            sut.pushBack(1)
                        })
                        
                        it("first and last should contain value 1"){
                            expect(sut.first?.value).to(equal(1))
                            expect(sut.last?.value).to(equal(1))
                        }
                        
                        it("first pointer should be equal to the last pointer"){
                            expect(sut.first).to(equal(sut.last))
                        }
                        
                        it("first and last pointers shouldn't be nil"){
                            expect(sut.first).toNot(beNil())
                            expect(sut.last).toNot(beNil())
                        }
                        
                        it("next node after last should be nil"){
                            expect(sut.last?.next).to(beNil())
                        }
                        
                    })
                    
                    context("push front", {
                        
                        beforeEach({
                            sut.pushFront(1)
                        })
                        
                        it("first and last should contain value 1"){
                            expect(sut.first?.value).to(equal(1))
                            expect(sut.last?.value).to(equal(1))
                        }
                        
                        it("first pointer should be equal to the last pointer"){
                            expect(sut.first).to(equal(sut.last))
                        }
                        
                        it("first and last pointers shouldn't be nil"){
                            expect(sut.first).toNot(beNil())
                            expect(sut.last).toNot(beNil())
                        }
                        
                        it("next node after last should be nil"){
                            expect(sut.last?.next).to(beNil())
                        }
                        
                    })
                })//push value in empty list
                
                //MARK: push value in not empty list
                describe("push value in not empty list", {
                    beforeEach({
                        sut.pushBack(1)
                    })
                    
                    context("push same value", {
                        beforeEach({
                            sut.pushBack(1)
                            sut.pushBack(1)
                        })
                        
                        it("list should not be empty"){
                            expect(sut.isEmpty).to(beFalsy())
                        }
                        
                        it("count should be 3"){
                            expect(sut.count).to(equal(3))
                        }
                    })
                    
                    context("push back", {
                        
                        beforeEach({
                            sut.pushBack(2)
                        })
                        
                        it("count should be 2"){
                            expect(sut.count).to(equal(2))
                        }
                        
                        it("first shouldn't be nil"){
                            expect(sut.first).toNot(beNil())
                        }
                        
                        it("last shouldn't be nil"){
                            expect(sut.last).toNot(beNil())
                        }
                        
                        it("next node after first should be last"){
                            expect(sut.first?.next).to(equal(sut.last))
                        }
                        
                        it("first value should be 1, last value should be 2"){
                            expect(sut.first?.value).to(equal(1))
                            expect(sut.last?.value).to(equal(2))
                        }
                        
                        it("next node after last should be nil"){
                            expect(sut.last?.next).to(beNil())
                        }
                    })
                    
                    context("push front", {
                        
                        beforeEach({
                            sut.pushFront(2)
                        })
                        
                        it("count should be 2"){
                            expect(sut.count).to(equal(2))
                        }
                        
                        it("first shouldn't be nil"){
                            expect(sut.first).toNot(beNil())
                        }
                        
                        it("last shouldn't be nil"){
                            expect(sut.last).toNot(beNil())
                        }
                        
                        it("next node after first should be last"){
                            expect(sut.first?.next).to(equal(sut.last))
                        }
                        
                        it("first value should be 2, last value should be 1"){
                            expect(sut.first?.value).to(equal(2))
                            expect(sut.last?.value).to(equal(1))
                        }
                        
                        it("next node after last should be nil"){
                            expect(sut.last?.next).to(beNil())
                        }
                    })
                    
                })//push value in not empty list
                
            })//When push new value in list
            
            //MARK: - When pop value from list
            describe("When pop value from list", {
                
                describe("Pop value from empty list", {
                    beforeEach({ 
                        sut.popFront()
                        sut.popBack()
                    })
                })
                
                //MARK: Pop value from list with one node
                describe("Pop value from list with one node", {
                    
                    beforeEach({
                        sut.pushBack(1)
                    })
                    
                    context("Pop front"){
                        beforeEach({
                            sut.popFront()
                        })
                        
                        it("count should be 0"){
                            expect(sut.count).to(equal(0))
                        }
                        
                        it("list should be empty"){
                            expect(sut.isEmpty).to(beTruthy())
                        }
                    }
                    
                    context("Pop back", {
                        
                        beforeEach({
                            sut.popBack()
                        })
                        
                        it("count should be 0"){
                            expect(sut.count).to(equal(0))
                        }
                        
                        it("list should be empty"){
                            expect(sut.isEmpty).to(beTruthy())
                        }
                    })
                })// Pop value from list with one node
                
                //MARK: Pop value from list with many nodes
                describe("Pop value from list with many nodes", {
                    
                    beforeEach({
                        sut.pushBack(3)
                        sut.pushFront(2)
                        sut.pushBack(4)
                        sut.pushFront(1)
                    })
                    
                    context("Pop back one value", {
                        beforeEach({
                            sut.popBack()
                        })
                        
                        it("count should be 3"){
                            expect(sut.count).to(equal(3))
                        }
                        
                        it("first value should be 1"){
                            expect(sut.first?.value).to(equal(1))
                        }
                        
                        it("last value should be 3"){
                            expect(sut.last?.value).to(equal(3))
                        }
                    })
                    
                    context("Pop back two value", {
                        beforeEach({
                            sut.popBack()
                            sut.popBack()
                        })
                        
                        it("count should be 2"){
                            expect(sut.count).to(equal(2))
                        }
                        
                        it("first value should be 1"){
                            expect(sut.first?.value).to(equal(1))
                        }
                        
                        it("last value should be 2"){
                            expect(sut.last?.value).to(equal(2))
                        }
                    })
                    
                    context("Pop front one value", {
                        beforeEach({
                            sut.popFront()
                        })
                        
                        it("count should be 3"){
                            expect(sut.count).to(equal(3))
                        }
                        
                        it("first value should be 2"){
                            expect(sut.first?.value).to(equal(2))
                        }
                        
                        it("last value should be 4"){
                            expect(sut.last?.value).to(equal(4))
                        }
                    })
                    
                    context("Pop front two value value", {
                        beforeEach({
                            sut.popFront()
                            sut.popFront()
                        })
                        
                        it("count should be 2"){
                            expect(sut.count).to(equal(2))
                        }
                        
                        it("first value should be 3"){
                            expect(sut.first?.value).to(equal(3))
                        }
                        
                        it("last value should be 4"){
                            expect(sut.last?.value).to(equal(4))
                        }
                    })
                    
                })// Pop value from list with many nodes
                
                //MARK: - When insert value in list
                describe("When insert value in list", {
                    
                    beforeEach({ 
                        sut.pushFront(1)
                    })
                    
                    context("Insert value after node", {
                        
                        beforeEach({
                            sut.insertItem(2, afterNode: sut.first!)
                        })
                        
                        it("count should be 2"){
                            expect(sut.count).to(equal(2))
                        }
                        
                        it("after insertion last should contain 2"){
                            expect(sut.last?.value).to(equal(2))
                        }
                        
                        it("first should be 1"){
                            expect(sut.first?.value).to(equal(1))
                        }
                    })
                })//When insert value in list
                
            })
        }
    }
}