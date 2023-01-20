//
//  File.swift
//  Assignment 1 - Volume of a sphere + Cube
//
//  Created by IIT phys 440 on 1/16/23.
//

import Foundation
//Here I'm defining a new structure Sphere which takes a Radius and checks to see its <= 0
struct
    Sphere{
    var _Radius: Double
    
    var Radius: Double {
        get { return _Radius }
        
        set(Radius_New) {
            if (Radius_New <= 0) {
                _Radius = 1.0
            } else{
                _Radius = Radius_New
            }
        }
    }
    // This is a check that is required to make sure the Swift UI runs smoothly and recognizes the correct radius.
    init(Radius_New: Double) {
        if (Radius_New <= 0) {
            _Radius = 1.0
        } else{
            _Radius = Radius_New
        }
    }
    // Her I calcualte the Volume  of a sphere given the inputed Radius of a Sphere. This can later be used in Content view for easy access.
    func Volume() -> Double {
        return 4/3*Double.pi*pow(Radius, 3)
    }
    // Her I calcualte the SurfaceArea of a sphere given the inputed Radius of a Sphere. This can later be used in Content view for easy access. 
    func SurfaceArea() -> Double {
        return 4*Double.pi*pow(Radius, 2)
    }
}
//Here I'm defining a new structure Cube which takes the Radius input of the Sphere and converts it to a SideLength. The conversion is Sidelength = 2*Radius
struct Cube{
    var Side_Length: Double
    
    init(Side_Length_New: Double){
        if (Side_Length_New <= 0){
            Side_Length = 1.0
        } else{
            Side_Length = Side_Length_New
        }
    }
    // Her I calcualte the Volume of a cube given the inputed Radius of a Sphere. This can later be used in Content view for easy access.
    func Volume() -> Double {
        return pow(Side_Length, 3)
    }
    // Her I calcualte the SurfaceArea of a cube given the inputed Radius of a Sphere. This can later be used in Content view for easy access.
    func SurfaceArea() -> Double {
        return 6*pow(Side_Length, 2)
    }
}


