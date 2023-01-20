//
//  File.swift
//  Assignment 1 - Volume of a sphere + Cube
//
//  Created by IIT phys 440 on 1/16/23.
//

import Foundation

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
    
    init(Radius_New: Double) {
        if (Radius_New <= 0) {
            _Radius = 1.0
        } else{
            _Radius = Radius_New
        }
    }
    func Volume() -> Double {
        return 4/3*Double.pi*pow(Radius, 3)
    }
    func SurfaceArea() -> Double {
        return 4*Double.pi*pow(Radius, 2)
    }
}

struct Cube{
    var Side_Length: Double
    
    init(Side_Length_New: Double){
        if (Side_Length_New <= 0){
            Side_Length = 1.0
        } else{
            Side_Length = Side_Length_New
        }
    }
    func Volume() -> Double {
        return pow(Side_Length, 3)
    }
    func SurfaceArea() -> Double {
        return 6*pow(Side_Length, 2)
    }
}


