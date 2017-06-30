//
//  ViewController.swift
//  GuardkeywordDemo
//
//  Created by mac on 30/06/17.
//  Copyright © 2017 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txt_name: UITextField!
    
    @IBOutlet weak var txt_email: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func btn_signup(_ sender: Any) {
//        signUP()
        sigupUser()
    }
    
    
    // Mark : - using if else statement
    func signUP(){
        if let name = txt_name.text, name.characters.count > 0, let email = txt_email.text, isEmailValid(email: email){
            print("signing up....")
        }
        else{
            //show error
            print("invalid name or email")
        }
    }
    
    // Mark :- using Guard Keyword
    func sigupUser(){
        guard let name = txt_name.text, name.characters.count > 0, let email = txt_email.text, isEmailValid(email: email)else{
            //show error
            print("invalid name or email")
            return
        }
        print("signing up....")
    }

    //Mark :- checking valid email function
    func isEmailValid(email: String) -> Bool{
        //very simple email address validation. An email has to contain the @ character, and have at least 6 characters in total: a@b.co
        return email.characters.count >= 6 && email.contains("@")
    }
    
}

