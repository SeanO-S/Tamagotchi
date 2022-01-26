//
//  ContentView.swift
//  Tamagotchi
//
//  Created by Okuyama-Smith, Sean (NA) on 19/01/2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var tmgtch = Tamagotchi()
    var body: some View {
        VStack{
            ZStack{
                Image("Blue-Egg-W")
                    .resizable()
                    .frame(width: 300, height: 400, alignment: .center)
                VStack{
                    ZStack{
                        Rectangle()
                            .frame(width: 180, height: 180, alignment: .center)
                            .padding(.top, 40)
                        VStack{
                            HStack{
                                Text("\n❤️: \(tmgtch.health)")
                                    .foregroundColor(.white)
                                    
                                Text("\n😃: \(tmgtch.happiness)")
                                    .foregroundColor(.white)
                                Text("\n🍔: \(tmgtch.hunger)")
                                    .foregroundColor(.white)
                            }//topH
                            Spacer()
                            HStack{
                                Text("\(tmgtch.message1)")
                                    .foregroundColor(.white)
                                Text("\(tmgtch.message2)")
                                    .foregroundColor(.white)
                                Text("\(tmgtch.message3)")
                                    .foregroundColor(.white)
                            }//bottomH
                        }//End of V
                        .frame(width: 180, height: 180, alignment: .center)
                    }//End of Z
                    HStack{
                        Button(action: {tmgtch.buttonPressed(button: 1)}){
                            Circle()
                                .background(Color.white)
                                .foregroundColor(.white)
                                .frame(width: 20, height: 20, alignment: .center)
                                .clipShape(Circle())
                        }
                        Button(action: {tmgtch.buttonPressed(button: 2)}){
                            Circle()
                                .background(Color.white)
                                .foregroundColor(.white)
                                .frame(width: 20, height: 20, alignment: .center)
                                .clipShape(Circle())
                                .padding(.top, 20)
                        }
                        Button(action: {tmgtch.buttonPressed(button: 3)}){
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
