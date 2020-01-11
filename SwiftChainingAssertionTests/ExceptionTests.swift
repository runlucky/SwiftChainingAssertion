//
//  ExceptionTests.swift
//  SwiftChainingAssertionTests
//
//  Created by 福田走 on 2020/01/11.
//  Copyright © 2020 福田走. All rights reserved.
//

import XCTest
import Foundation
@testable import SwiftChainingAssertion

class ExceptionTests: XCTestCase {
    func testException() {
        Throws(FooError.self) {
            throw FooError.foo
        }
    }

    func testExceptionFail1() {
        Throws(FooError.self) {
            throw BarError.bar
        }
    }

    func testExceptionFail2() {
        Throws(FooError.self) {
        }
    }

    func testNoException() {
        NoThrows {
        }
    }

    func testNoExceptionFail() {
        NoThrows {
            throw FooError.foo
        }
    }
}

fileprivate enum FooError: Error {
    case foo
}

fileprivate enum BarError: Error {
    case bar
}
