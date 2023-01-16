//
//  Assignment_1___Volume_of_a_sphere___CubeUITestsLaunchTests.swift
//  Assignment 1 - Volume of a sphere + CubeUITests
//
//  Created by IIT phys 440 on 1/16/23.
//

import XCTest

final class Assignment_1___Volume_of_a_sphere___CubeUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
