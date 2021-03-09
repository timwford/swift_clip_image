//
//  ContentView.swift
//  swift_clip_image
//
//  Created by Tim Ford on 3/4/21.
//

import SwiftUI
import CoreGraphics

struct ContentView: View {
    
    func aspectRatio(x: Float, y: Float, width: Float) -> CGFloat {
        print(CGFloat(y/x * width))
        return CGFloat(y/x * width)
    }
    
    var body: some View {
        GeometryReader { geo in
            VStack(alignment: .center) {
                Image("rapid").resizable().frame(width: geo.size.width*0.9, height: aspectRatio(x: 16.0, y: 7.0, width: Float(geo.size.width * 0.9)), alignment: .center)
                
                Divider()
                
                ZStack {
                    Image("rapid").resizable().aspectRatio(contentMode: .fill).frame(width: geo.size.width*0.9, height: aspectRatio(x: 16.0, y: 7.0, width: Float(geo.size.width * 0.9)), alignment: .center).clipped()
                }
                
                Divider()
                
                Image("rapid").resizable().frame(width: 300, height: 175, alignment: .center)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
