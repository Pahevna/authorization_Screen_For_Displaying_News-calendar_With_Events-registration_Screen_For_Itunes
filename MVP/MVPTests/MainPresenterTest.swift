//
//  MainPresenterTest.swift
//  MVPTests
//
//  Created by mac on 01.10.2020.
//  Copyright © 2020 mac. All rights reserved.
//

import XCTest
@testable import MVP

class MockView: MainViewProtocol {
    var titleTest: String?
    func setGreeting(greeting: String) {
        self.titleTest = greeting
    }
}

class MainPresenterTest: XCTestCase {
    
    var view: MockView!
    var person: Person!
    var presenter: MainPresenter!

    override func setUpWithError() throws {
        view = MockView()
        person = Person(fistName: "Bar", lastName: "Baz")
        presenter = MainPresenter(view: view, person: person)
    }

    override func tearDownWithError() throws {
        view = nil
        person = nil
        presenter = nil
    }
    
    func testModuleIsNotNill() {
        XCTAssertNotNil(view, "view is not nil")
        XCTAssertNotNil(person, "person is not nil")
        XCTAssertNotNil(presenter, "presenter is not nil")
    }
    
    func testView() {
        presenter.showGreeting()
        XCTAssertEqual(view.titleTest, "Bar Baz")
    }
    
    func testPersonModel() {
        XCTAssertEqual(person.fistName, "Bar")
        XCTAssertEqual(person.lastName, "Baz")
    }
}
