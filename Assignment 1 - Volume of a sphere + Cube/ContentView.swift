//
//  ContentView.swift
//  Assignment 1 - Volume of a sphere + Cube
//
//  Created by IIT phys 440 on 1/16/23.
//

import SwiftUI

struct ContentView: View {
    //I'm defining State variables sphere and cube to take on the structures created in Sphere_Cube. This allow me to define the values for these variables. I set them to 0 for now.
    @State var sphere: Sphere = Sphere(Radius_New: 0.0)
    @State var cube: Cube = Cube(Side_Length_New: 0.0)
    
    var body: some View {
        VStack {
            //This allows a user to enter a Radius of their choice. The calculations are done in the background, and the results are dispalyed on the UI.
            TextField("Enter Radius", value: $sphere.Radius, format: .number)
                .onSubmit {
                    cube.Side_Length = 2 * sphere.Radius
                }
            //Displays the Reults of both Volume and SurfaceArea for the Cube and Sphere. 
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
