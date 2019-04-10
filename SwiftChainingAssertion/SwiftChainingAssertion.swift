//
//  SwiftChainingAssertion.swift
//  SwiftChainingAssertion
//
//  Created by 福田走 on 2019/04/10.
//  Copyright © 2019 福田走. All rights reserved.
//

import Foundation
import XCTest

public extension Equatable {
    public func `is`(_ value: Self) {
        XCTAssertEqual(self, value)
    }

    public func isNot(_ value: Self) {
        XCTAssertNotEqual(self, value)
    }

    public func `is`(_ predicate: () -> Self) {
        XCTAssertEqual(self, predicate())
    }
    
    public func isNot(_ predicate: () -> Self) {
        XCTAssertNotEqual(self, predicate())
    }

}
