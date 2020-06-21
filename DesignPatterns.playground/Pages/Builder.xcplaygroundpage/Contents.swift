// Builder

protocol NotebookBuilder {
    func produceHardware()
    func produceOperationalSystem()
}

final class Mac: NotebookBuilder {
    func produceHardware() {
        print("Produce hardware for Mac")
    }
    
    func produceOperationalSystem() {
         print("Produce operational system for Mac")
    }
}

final class Dell: NotebookBuilder {
    func produceHardware() {
        print("Produce hardware for Dell")
    }
    
    func produceOperationalSystem() {
        print("Produce operational system for Dell")
    }
}

final class Notebook {
    let builder: NotebookBuilder
    
    init(builder: NotebookBuilder) {
        self.builder = builder
    }
    
    func produce() {
        builder.produceHardware()
        builder.produceOperationalSystem()
    }
}

let mac = Mac()

let macComputer = Notebook(builder: mac)
macComputer.produce()



