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
            
            it("Should not be nil after init", closure: { 
                expect(sut).toNot(beNil())
            })
            
            describe("When push new value in list", {
                
                context("push back value in empty list", {
                    
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
         
                context("push front value in empty list", {
                    
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
                
            })
        }
    }
}