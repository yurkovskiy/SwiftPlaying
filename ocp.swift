class Message {
    private var text:String
    
    public func getText() -> String {
        return self.text
    }
    
    init(_ text:String) {
        self.text = text
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
let mess = Message("Some cool message")
nb.showMessage(mess)