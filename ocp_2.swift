class Message {
    internal var text:String
    
    public func getText() -> String {
        return self.text
    }
    
    init(_ text:String) {
        self.text = text
    }
}

class DateMessage: Message {
    override func getText() -> String {
        return self.text + " 2017-09-18"
    }
}


class NoticeBoard {
    public func showMessage(_ message:Message) {
        display(message.getText())
    }
    
    private func display(_ str:String) {
        print("*** \(str) ***")
    }
}

let nb = NoticeBoard()
let mess1 = Message("Some cool message")
let mess2 = DateMessage("Some cool message")
nb.showMessage(mess1)
nb.showMessage(mess2)