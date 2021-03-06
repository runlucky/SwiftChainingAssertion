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
        Throws<Error> {
            throw FooError.foo
        }
    }

    func testExceptionSpecifiedType() {
        Throws<FooError> {
            throw FooError.foo
        }
    }

    func testNoException() {
        NoThrows {
        }
    }
    
    func testExceptionFail_InvalidType() {
        Throws<FooError> {
            throw BarError.bar
        }
    }

    func testExceptionFail_NoThrows() {
        Throws<FooError> {
        }
    }

    func testNoExceptionFail_Throws() {
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
