//
//  ViewController.swift
//  CoreDataSimpleFetch
//
//  Created by Michael Teter on 2016-09-25.
//  Copyright © 2016 Michael Teter. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    
    @IBOutlet weak var lblOutput: UILabel!

    @IBAction func btnCreatePressed(_ sender: AnyObject) {
        createData()
        fetchData()
    }
    
    func createData() {
        let ad  = UIApplication.shared.delegate as! AppDelegate
        let moc = ad.persistentContainer.viewContext

        let person  = Person(context: moc)
        person.name = randomName()
        person.age  = Int16(randomAge())
        
        ad.saveContext()
    }
    
    func fetchData() {
        var s   = "" // String to hold crude output for label
        let ad  = UIApplication.shared.delegate as! AppDelegate
        let moc = ad.persistentContainer.viewContext
        let fetchReq: NSFetchRequest<Person> = NSFetchRequest(entityName: "Person")
        fetchReq.sortDescriptors = [NSSortDescriptor(key: "name", ascending: true)]
        
        do {
            let fetchResult = try moc.fetch(fetchReq as! NSFetchRequest<NSFetchRequestResult>) as! [Person]
            for r in fetchResult {
                s += "\(r.name!), age \(r.age)\n"
            }
        } catch {
            let er = error as NSError
            s = "Fetch Failed: \(er)"
        }
        
        lblOutput.text = s
    }
}

