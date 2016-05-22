//
//  MessageService.swift
//  SanatanHinduCalendar
//
//  Created by Sujay Sudhir Borde on 22/05/2016.
//  Copyright © 2016 RMIT. All rights reserved.
//

import Foundation

class MessageService {
    
    var messages = [
        "Man suffers only because he takes seriously what the gods made for fun.",
        "Life is a journey. Time is a river. The door is ajar.",
        "Life is more or less a lie, but then again, that's exactly the way we want it to be.",
        "It is the power of the mind to be unconquerable. "
    ]
    
    func randomQuote() -> String {
        return messages[ Int(arc4random_uniform(UInt32(messages.count))) ]
    }
    
}
