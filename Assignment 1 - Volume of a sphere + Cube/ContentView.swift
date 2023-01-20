//
//  ContentView.swift
//  Assignment 1 - Volume of a sphere + Cube
//
//  Created by IIT phys 440 on 1/16/23.
//

import SwiftUI

struct ContentView: View {
    @State var sphere: Sphere = Sphere(Radius_New: 0.0)
    @State var cube: Cube = Cube(Side_Length_New: 0.0)
    
    var body: some View {
        VStack {
            TextField("Enter Radius", value: $sphere.Radius, format: .number)
                .onSubmit {
                    cube.Side_Length = 2 * sphere.Radius
                }
            Text("Volume: \(sphere.Volume())")
            Text("Surface Area: \(sphere.SurfaceArea())")
            Text("Volume Of Bounding Box: \(cube.Volume())")
            Text("Surface Area Of Bounding Box: \(cube.SurfaceArea())")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
