//
//  Events.swift
//  SanatanHinduCalendar
//
//  Created by Harish Setty on 20/05/2016.
//  Copyright © 2016 RMIT. All rights reserved.
//

import Foundation
import CoreData

class Event : NSManagedObject
{
    @NSManaged var name: String
    @NSManaged var place: String
    @NSManaged var desc: String
}