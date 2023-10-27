//
//  ContentView.swift
//  PreventScreenShot_Demo
//
//  Created by vignesh kumar c on 27/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink {
                    ScreenShotPreventView {
                        GeometryReader {
                            let size = $0.size
                            
                            Image(.pic)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: size.width, height: size.height)
                                .clipShape(.rect(topLeadingRadius: 35, bottomTrailingRadius: 35))
                        }
                        .padding(15)
                    }
                    .navigationTitle("MushroomChilli")
                } label: {
                    Text("Show Image")
                }
                NavigationLink {
                    List {
                        Section("API Key") {
                            ScreenShotPreventView {
                                Text("qwewefergedqwifewrgb")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                            }
                        }
                        
                        Section("APN's") {
                            ScreenShotPreventView {
                                Text("cwqwdfd")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                            }
                        }
                    }
                } label: {
                    Text("Show Security Keys")
                }
            }
            .navigationTitle("My List")
        }
    }
}

#Preview {
    ContentView()
}
