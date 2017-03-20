//
//  ViewController.swift
//  PListOne
//
//  Created by Ahmed on 7/20/16.
//  Copyright © 2016 PiTechnologies. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var nameLabel:UILabel?
    @IBOutlet weak var phoneLabel:UILabel?
    @IBOutlet weak var emailLabel:UILabel?
    
    var friendToDisplay:FriendModel = FriendModel()
    
    
    func setSelectedFriend(selectedFriend:FriendModel){
        self.friendToDisplay = selectedFriend
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel?.text = friendToDisplay.name
        phoneLabel?.text = friendToDisplay.phone
        emailLabel?.text = friendToDisplay.email
    
    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

