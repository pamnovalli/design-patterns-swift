/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
*/

// Builder


protocol SoftwareDevelopmet {
    func performRequirementsAnalysis()
    func createUserExperience()
    func createLayoutDesign()
    func develop()
}

final class DeliveredApp: SoftwareDevelopmet {
    func performRequirementsAnalysis() {
        print("Performing the requirements analysis for the delivery app")
    }
    
    func createUserExperience() {
        print("Creating the user experience for the delivery app")
    }
    
    func createLayoutDesign() {
        print("Creating the layout design for the delivery app")
    }
    
    func develop() {
        print("Developing the code for the delivery app")
    }
}

final class FinanceApp: SoftwareDevelopmet {
    func performRequirementsAnalysis() {
        print("Performing the requirements analysis for the finance app")
    }
    
    func createUserExperience() {
        print("Creating the user experience for the finance app")
    }
    
    func createLayoutDesign() {
        print("Creating the layout design for the finance app")
    }
    
    func develop() {
        print("Developing the code for the finance app")
    }

}

final class SoftwareManager {
    var software: SoftwareDevelopmet
    
    init(software: SoftwareDevelopmet) {
        self.software = software
    }
    
    func develop() {
        software.performRequirementsAnalysis()
        software.createUserExperience()
        software.createLayoutDesign()
        software.develop()
    }
}


let financeApp = FinanceApp()
let deliveredApp = DeliveredApp()

let softwareManager = SoftwareManager(software: financeApp)
softwareManager.develop()

