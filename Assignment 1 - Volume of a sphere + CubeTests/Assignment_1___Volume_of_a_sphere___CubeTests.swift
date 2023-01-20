//
//  Assignment_1___Volume_of_a_sphere___CubeTests.swift
//  Assignment 1 - Volume of a sphere + CubeTests
//
//  Created by IIT phys 440 on 1/16/23.
//

import XCTest





final class Assignment_1___Volume_of_a_sphere___CubeTests: XCTestCase {

    

//Here I wrote seperate functions for testing the Radius, Sidelength, Sphere Volume, Sphere Surface Area, Cube Volume, and Cube SurfaceArea. They are all individual to make sure nothing gets mixed up.
    func testRadius() throws {
        //Here I define the radius to be 2, and test to make sure thats true.
        let sphere: Sphere = Sphere(Radius_New: 2.0)
        XCTAssertEqual(sphere.Radius, 2.0, "The Constructed sphere failed to have the given radius which it should have for positive numbers")
    }
    
    func testSideLength() throws {
        //Here I define the Sidelength to be 2, and test to make sure thats true.
        let cube: Cube = Cube(Side_Length_New: 2.0)
        XCTAssertEqual(cube.Side_Length, 2.0, "The Constructed cube failed to have the given sidelength which it should have for positive numbers")
    }
    
    func testSphereVolume() throws {
        //Here I define the Radius to be 2, and test to make sure thats true. Then I calculate the expected volume and compare the answers.
        let sphere: Sphere = Sphere(Radius_New: 2.0)
        let SphereVolume = sphere.Volume()
        let Expected =  (32/3) * Double.pi
        XCTAssertEqual(SphereVolume, Expected, accuracy: 1e-14)
    }
    
    func testCubeVolume() throws {
        //Here I define the Sidelength to be 2, and test to make sure thats true. Then I calculate the expected volume and compare the answers.
        let cube: Cube = Cube(Side_Length_New: 2.0)
        let CubeVolume = cube.Volume()
        let Expected2 =  8
        XCTAssertEqual(CubeVolume, Double(Expected2), accuracy: 1e-14)
    }
    
    func testSphereSurfaceArea() throws {
        //Here I define the Radius to be 2, and test to make sure thats true. Then I calculate the expected volume and compare the answers.
        let sphere: Sphere = Sphere(Radius_New: 2.0)
        let SphereSurfaceArea = sphere.SurfaceArea()
        let Expected3 =  16 * Double.pi
        XCTAssertEqual(SphereSurfaceArea, Double(Expected3), accuracy: 1e-14)
    }
    
    
    func testCubeSurfaceArea() throws {
        //Here I define the Sidelength to be 2, and test to make sure thats true. Then I calculate the expected volume and compare the answers.
        let cube: Cube = Cube(Side_Length_New: 2.0)
        let CubeSurfaceArea = cube.SurfaceArea()
        let Expected4 =  24
        XCTAssertEqual(CubeSurfaceArea, Double(Expected4), accuracy: 1e-14)
    }
        
}
 
        
    
    
