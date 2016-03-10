

import UIKit

class Strain {
    
    var name: String
    var category: strainType
    var symptoms: [String]
    var effects: [String]
    
    init(name: String, category: strainType, symptoms: [String], effects: [String]) {
        self.name = name
        self.category = category
        self.symptoms = symptoms
        self.effects = effects
    }
    
}


enum strainType {
    case Indica, Stativa, Hybrid
}


// MARK - Create Strains
var northernLights = Strain(name: "Northern Lights", category: strainType.Indica,
    symptoms: ["Stress", "Pain","Depression", "Insomnia", "Headaches"],
    effects: ["Relaxed", "Euphoric", "Happy", "Sleepy", "Uplifted"])
var sourDiesel = Strain(name: "Sour Diesel", category: strainType.Stativa,
    symptoms: ["Stress", "Pain", "Depression", "Lack of Appetite", "Fatigue"],
    effects: ["Energetic", "Euphoric", "Happy", "Creative", "Uplifted"])
var blueberry = Strain(name: "Blueberry", category: strainType.Indica,
    symptoms: ["Strees", "Pain", "Insomnia", "Depression", "Nausea"],
    effects: ["Relaxed", "Happy", "Euphoric", "Sleepy", "Hungry"] )
var blueDream = Strain(name: "Blue Dream", category: strainType.Hybrid,
    symptoms: ["Stress", "Depression", "Pain", "Insomnia", "Headaches"],
    effects: ["Happy", "Euphoric", "Relaxed", "Uplifted", "Creative"])
var ogKush = Strain(name: "OG Kush", category: strainType.Hybrid,
    symptoms: ["Stress", "Pain", "Depression", "Insomnia", "Headaches"],
    effects: ["Happy", "Relaxed", "Euphoric", "Uplifted", "Hungry"])
var girlScoutCookies = Strain(name: "Girl Scout Cookies", category: strainType.Hybrid,
    symptoms: ["Stress", "Despression", "Pain", "Insomnia", "Lack Of Appetite"],
    effects: ["Happy", "Relaxed", "Euphoric", "Uplifted", "Creative"])
var lemonHaze  = Strain(name: "Lemon Haze", category: strainType.Stativa,
    symptoms: ["Stress", "Depression", "Pain", "Lack Of Appetite", "Insomnia"],
    effects: ["Happy", "Euphoric", "Uplifted", "Energetic", "Relaxed"])


// MARK - Add Strains to Array
var strains = [Strain]()
strains.append(northernLights)
strains.append(sourDiesel)
strains.append(blueberry)
strains.append(blueDream)
strains.append(ogKush)
strains.append(girlScoutCookies)
strains.append(lemonHaze)



// MARK - Choose Effects
var chooseMedicalSymptoms = [
    0 : "Pain",
    1 : "Inflammation",
    2 : "Headaches",
    3 : "Fatigue",
    4 : "Lack of Appetite",
    5 : "Spasms",
    6 : "Spasticity",
    7 : "Stress",
    8 : "Anxiety",
    9 : "Depression",
    10 : "Insomnia",
    11 : "Nausea"]

var chooseGetLifted = [
    0 : "Creative",
    1 : "Energetic",
    2 : "Focused",
    3 : "Euphoric",
    4 : "Happy",
    5 : "Relaxed",
    6 : "Talkative",
    7 : "Gleeful",
    8 : "Sleepy",
    9 : "Uplifted",
    10 : "Hungry"]





var userReason = "Uplifted"
var userSelection = [5, 3]
var userSuggestions = [Strain]()


// MARK - LOGIC FOR STRAIN SELECTION
if userReason == "Medical" {
    
    var selectionOne = chooseMedicalSymptoms[userSelection[0]]
    var selectionTwo = chooseMedicalSymptoms[userSelection[1]]
    
    for strain in strains {
        
        for symptom in strain.symptoms {
           
            if selectionOne == symptom {
                
                for symptom in strain.symptoms {
                    
                    if selectionTwo == symptom {
                      
                        userSuggestions.append(strain)
                    }
                    
                    
                }

            }

        }
        
 
    }
    
    
} else {
    
    var selectionOne = chooseGetLifted[userSelection[0]]
    var selectionTwo = chooseGetLifted[userSelection[1]]
    
    for strain in strains {
        
        for effect in strain.effects {
            
            if selectionOne == effect {
                
                for effect in strain.effects {
                    
                    if selectionTwo == effect {
                        
                        userSuggestions.append(strain)
                    }
                    
                    
                }
                
            }
            
        }
        
        
    }
    
}

for suggestion in userSuggestions {
    println(suggestion.name)
}

