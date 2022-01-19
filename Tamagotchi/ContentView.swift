//
//  ContentView.swift
//  Tamagotchi
//
//  Created by Okuyama-Smith, Sean (NA) on 19/01/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            ZStack{
                Image("Blue-Egg-W")
                    .resizable()
                    .frame(width: 300, height: 400, alignment: .center)
                VStack{
                    Rectangle()
                        .frame(width: 180, height: 180, alignment: .center)
                        .padding(.top, 40)
                    HStack{
                        Button(action: {}){
                            Circle()
                                .background(Color.white)
                                .foregroundColor(.white)
                                .frame(width: 20, height: 20, alignment: .center)
                                .clipShape(Circle())
                        }
                        Button(action: {}){
                            Circle()
                                .background(Color.white)
                                .foregroundColor(.white)
                                .frame(width: 20, height: 20, alignment: .center)
                                .clipShape(Circle())
                                .padding(.top, 20)
                        }
                        Button(action: {}){
                            Circle()
                                .background(Color.white)
                                .foregroundColor(.white)
                                .frame(width: 20, height: 20, alignment: .center)
                                .clipShape(Circle())
                        }
                            
                    }//End of H
                }//End of V
            }//End of Z
        }//End of V
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
