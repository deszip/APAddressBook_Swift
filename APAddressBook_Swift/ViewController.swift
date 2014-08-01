//
//  ViewController.swift
//  APAddressBook_Swift
//
//  Created by Deszip on 30/07/14.
//  Copyright (c) 2014 Alterplay. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    override func viewDidLoad() {
        super.viewDidLoad()

        let addressBook : APAddressBook = APAddressBook()
        
        addressBook.loadContacts({(contacts, error: NSError!) in
            println(contacts)
            for contact in contacts {
                // contact does not have name property
                println(contact.name)
                // and phone also
                println(contact.phone)
                
                // this does not copile at all
                //println(contact.somefooproperty)
            }
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

