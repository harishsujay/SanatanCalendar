//
//  EventViewControllerTests.swift
//  SanatanHinduCalendar
//
//  Created by Harish Chander Setty Balachandran on 22/05/2016.
//  Copyright © 2016 RMIT. All rights reserved.
//

import XCTest
import UIKit
@testable import SanatanHinduCalendar
import CoreData
import Foundation
import Foundation
import CoreData


class EventViewControllerTests: XCTestCase {
    
     var events = [Event]()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testSavingEventsInCoreData() {
        
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        
        // Get a database context from the app delegate
        var managedContext: NSManagedObjectContext
            {
            get{
                return appDelegate.managedObjectContext
            }
        }
        
        let entity =  NSEntityDescription.entityForName("Event" ,inManagedObjectContext:managedContext)
        let event = Event(entity: entity!, insertIntoManagedObjectContext:managedContext)
        
        event.name = "Diwali celebration"
        event.place = "Sams home"
        event.desc = "Diwali celbration"
        
        appDelegate.saveContext()
        
        events.append(event)
        print("\n\n An Event is saved into the Core Data \n\n")
    }
    
    func testGettingEventByIndex() {
       
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        let managedContext: NSManagedObjectContext = appDelegate.managedObjectContext
        do
        {
            let fetchRequest = NSFetchRequest(entityName:"Event")
            
            let results = try managedContext.executeFetchRequest(fetchRequest)
            
            events = results as! [Event]
            
            print("\n\n The desccription of event at position 0 is : \(events[0].desc) \n\n")
        }
        catch let error as NSError
        {
            print("\n\n Could not fetch \(error), \(error.userInfo) \n\n")
        }
    }
    
    func testNumberOfEventsInCoreData (){
        
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        let managedContext: NSManagedObjectContext = appDelegate.managedObjectContext
        do
        {
            let fetchRequest = NSFetchRequest(entityName:"Event")
            
            let results = try managedContext.executeFetchRequest(fetchRequest)
            
            events = results as! [Event]
            
            print("\n\n Number of events in the Core Data \(events.count) \n\n")
        }
        catch let error as NSError
        {
            print("\n\n Could not fetch \(error), \(error.userInfo) \n\n")
        }
        
    }
    
    func testUpdatingEventInCoreData() {
        
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        let managedContext: NSManagedObjectContext = appDelegate.managedObjectContext
        
        do {
            let fetchRequest = NSFetchRequest(entityName:"Event")
            
            let results = try managedContext.executeFetchRequest(fetchRequest)
            
            events = results as! [Event]
            
            let event = events[0] as NSManagedObject
            
            event.setValue("Ramnavmi", forKey: "name")
            
            try event.managedObjectContext?.save()
            print("\n\n The events data has been updated into the Core Data successfully \n\n")
        } catch let error as NSError{
            print("\n\n Could not update \(error), \(error.userInfo) \n\n")
        }
    }
    
    func testDeleteEventFromCoreData() {
        
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        let managedContext: NSManagedObjectContext = appDelegate.managedObjectContext
        
        do {
            let fetchRequest = NSFetchRequest(entityName: "Event")
            let deleteRequest = NSBatchDeleteRequest(fetchRequest: fetchRequest)
            
            try managedContext.executeRequest(deleteRequest)
            print("\n\n All saved events from the Core Data is deleted \n\n")
        } catch let error as NSError {
            print("\n\n Could not delete \(error), \(error.userInfo) \n\n")
        }
    }
    
}
