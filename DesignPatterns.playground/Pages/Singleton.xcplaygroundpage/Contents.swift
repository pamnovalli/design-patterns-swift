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

let notification = NotificationMannager.sharedInstance
notification.send()
