class Message {
    private var text:String
    
    public func getText(_ type:Int) -> String {
        switch type {
            case 0:
                return self.text
            case 1:
                let date = " 2017-09-18"
                return self.text + date
            default:
            return self.text
            
        }
    }
    
    init(_ text:String) {
        self.text = text
    }
}


class NoticeBoard {
    public func showMessage(_ message:Message) {
        display(message.getText(0))
    }
    
    private func display(_ str:String) {
        print("*** \(str) ***")
    }
}

let nb = NoticeBoard()
let mess = Message("Some cool message")
nb.showMessage(mess)