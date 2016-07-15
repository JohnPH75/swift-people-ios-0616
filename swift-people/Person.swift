//
//  Person.swift
//  swift-people
//
//  Created by John Hussain on 7/15/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Person {
    
    let name: String
    
    private(set) var ageInYears: Int?
    
    private(set) var skills: [String] = []
    
    var qualifiedTutor: Bool { return skills.count >= 4 }
    
    
    init(name: String, ageInYears: Int?) {
        
        self.name = name
        
        self.ageInYears = ageInYears
    }
    
    convenience init(name: String) {
        
        self.init(name: name, ageInYears: nil)
    }
    
    convenience init() {
        
        self.init(name: "John Doe")
    }
    
    func celebrateBirthday() -> String {
        
        if var age = self.ageInYears {
            
            age += 1
            
            self.ageInYears = age
            
            let ordinal = age.ordinal()
            
            return "HAPPY \(age)\(ordinal.uppercaseString) BIRTHDAY, \(name.uppercaseString)!!!"
            
        } else {
            
            return "HAPPY BIRTHDAY, \(name.uppercaseString)!!!"
        }
    }
    
    func learnSkillBash() {
        
        if skills.contains("bash") == false{
            
            skills.append("bash")
        }
    }
    
    func learnSkillXcode() {
        
        if skills.contains("Xcode") == false{
            
            skills.append("Xcode")
        }
    }
    
    func learnSkillObjectiveC() {
        
        if skills.contains("Objective-C") == false{
            
            skills.append("Objective-C")
        }
    }
    
    func learnSkillSwift() {
        
        if skills.contains("Swift") == false{
            
            skills.append("Swift")
        }
    }
    
    func learnSkillInterfaceBuilder() {
        
        if skills.contains("Interface Builder") == false{
            
            skills.append("Interface Builder")
        }
    }
}