/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
*/

// Singleton

final class NotificationMannager {
    static let sharedInstance = NotificationMannager()
    
    private init() {}
    
    func send() {
        print("Sending notification")
    }
}

let formatter = NotificationMannager.sharedInstance
formatter.send()
