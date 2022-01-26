//
//  Tamagotchi.swift
//  Tamagotchi
//
//  Created by Okuyama-Smith, Sean (NA) on 19/01/2022.
//

import Foundation

class Tamagotchi:ObservableObject {
    @Published var hunger: Int
    @Published var health: Int
    @Published var happiness: Int
    @Published var message1: String
    @Published var message2: String
    @Published var message3: String
    var death = false
    
    func eatSnack(){
        if self.hunger > 0{
            self.hunger -= 1
        }
        self.happiness += Int.random(in: 1..<2)
        self.update()
    }
    
    func eatMeal(){
        if self.hunger > 0{
            self.hunger = 0
        }
        self.happiness -= Int.random(in: 0..<1)
        self.update()
    }
    
    func playGame(){
        self.hunger += Int.random(in: 1..<4)
        self.happiness += Int.random(in: 3..<7)
        self.update()
    }
    
    func dead(){
        self.message1 = "Attempt resuscitation"
        self.message2 = "Sacrifice it's soul to cthulhu"
        self.message3 = "Dead lol"
    }
    
    func update(){
        if self.hunger >= 25{
            self.dead()
        }
        if self.happiness == 0{
            self.dead()
        }
        if self.hunger == 0{
            if self.message1 == "Snack" || self.message1 == "Meal" {
                self.message1 = "     "
            } else if self.message2 == "Snack" || self.message2 == "Meal" {
                self.message2 = "     "
            } else if self.message3 == "Snack" || self.message3 == "Meal" {
                self.message3 = "     "
            }
        }
    }
    
    func timePassed(){
        self.hunger += 1
        self.happiness -= 1
        self.update()
    }
    
    func buttonPressed(button: Int) {
        if button == 1{
            if message1 == "Snack"{
                self.eatSnack()
            } else if message1 == "Meal" {
                self.eatMeal()
            } else if message1 == "Play" {
                self.playGame()
            }
        } else if button == 2{
            if message2 == "Snack"{
                self.eatSnack()
            } else if message2 == "Meal" {
                self.eatMeal()
            } else if message2 == "Play" {
                self.playGame()
            }
        } else if button == 3{
            if message3 == "Snack"{
                self.eatSnack()
            } else if message3 == "Meal" {
                self.eatMeal()
            } else if message3 == "Play" {
                self.playGame()
            }
        }
        self.update()
    }
    

    
    init(){
        self.hunger = 5
        self.health = 10
        self.happiness = 10
        self.message1 = "Snack"
        self.message2 = "Meal"
        self.message3 = "Play"
    }
}
