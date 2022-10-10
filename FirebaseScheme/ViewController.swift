//
//  ViewController.swift
//  FirebaseScheme
//
//  Created by Samony Chithian on 10/10/22.
//

import UIKit
import FirebaseFirestore

class ViewController: UIViewController {
    
    let db = Firestore.firestore()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    #if PROD
        print("Prod mode")
    #else
        print("qa mode")
    #endif
        
        
        // Add a new document with a generated ID
        var ref: DocumentReference? = nil
        ref = db.collection("users").addDocument(data: [
            "first": "Chithian",
            "last": "Hunter",
            "born": 2022
        ]) { err in
            if let err = err {
                print("Error adding document: \(err)")
            } else {
                print("Document added with ID: \(ref!.documentID)")
            }
        }
        
    }
    
}

