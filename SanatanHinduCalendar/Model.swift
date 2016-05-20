//
//  Model.swift
//  SanatanHinduCalendar
//
//  Created by Harish Setty on 20/05/2016.
//  Copyright © 2016 RMIT. All rights reserved.
//

import Foundation
import UIKit
import CoreData

class Model {

    // Create a collection of objects to store in the database
    var events = [Event]()
    
    // MARK: - CRUD
    
    func saveProduct(name: String, place:String, desc:String)
    {
        let appDelegate =
        UIApplication.sharedApplication().delegate as! AppDelegate
        
        
        
        // Get a database context from the app delegate
        var managedContext: NSManagedObjectContext
            {
            get{
                return appDelegate.managedObjectContext
            }
        }
        
        let entity =  NSEntityDescription.entityForName("Event" ,inManagedObjectContext:managedContext)
        let event = Event(entity: entity!, insertIntoManagedObjectContext:managedContext)
        
        //let product = Product()
        // Create an object based on the Entity
        event.name = name
        
        event.place = place
        event.desc = desc
        appDelegate.saveContext()
        events.append(event)
        print("")
    }
    
    func getEvents() -> [Event]
    {
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        let managedContext: NSManagedObjectContext = appDelegate.managedObjectContext
        do
        {
            let fetchRequest = NSFetchRequest(entityName:"Event")
            
            let results = try managedContext.executeFetchRequest(fetchRequest)
            
            events = results as! [Event]
        }
        catch let error as NSError
        {
            print("Could not fetch \(error), \(error.userInfo)")
        }
        return self.events
    }
    
    func getEvent(index: Int) -> Event
    {
        return events[index]
    }
    
    
    
    /* This is a class variable allowing me to access it
    without first instantiating the model
    
    Now we can retrieve the model without instantiating it directly
    
    var model = Model.sharedInstance
    */
    
    // Here we use a Struct to hold the instance of the model i.e itself
    private struct Static
    {
        static var instance: Model?
    }
    
    
    class var sharedInstance: Model
    {
        if (Static.instance == nil)
        {
            Static.instance = Model()
        }
        return Static.instance!
    }
    
}