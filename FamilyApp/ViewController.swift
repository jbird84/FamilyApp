//
//  ViewController.swift
//  FamilyApp
//
//  Created by Kinney Kare on 12/9/19.
//  Copyright © 2019 Kinney Kare. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var familyPicture: UIImageView!
    
    var imageArray = [UIImage]()
    
    let uiSetUp = UISetUp()
    
    
    override func viewWillAppear(_ animated: Bool) {
        imageArray = [#imageLiteral(resourceName: "MyMavv"), #imageLiteral(resourceName: "MyWorld"), #imageLiteral(resourceName: "MyMermaid"), #imageLiteral(resourceName: "Me"), #imageLiteral(resourceName: "MyNorii")]
        
        uiSetUp.setPicAndTitle(label: nameLabel, image: familyPicture, theLabelColor: #colorLiteral(red: 0.1637823701, green: 0.1863614441, blue: 0.1997937817, alpha: 1), theBorderColor: #colorLiteral(red: 0.1637823701, green: 0.1863614441, blue: 0.1997937817, alpha: 1))
        
        familyPicture.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(pictureWillChange))
        familyPicture.addGestureRecognizer(gestureRecognizer)
    }
    
    
    @objc func pictureWillChange () {
        
        familyPicture.image = imageArray.randomElement()
        
        if familyPicture.image == UIImage(named: "MyMavv") {
            nameLabel.text = "Mavven Kinney"
        } else if familyPicture.image == UIImage(named: "MyNorii") {
            nameLabel.text = "Norii Kinney"
        } else if familyPicture.image == UIImage(named: "MyWorld") {
            nameLabel.text = "My World"
        } else if familyPicture.image == UIImage(named: "MyMermaid") {
            nameLabel.text = "Reba Kinney"
        } else if familyPicture.image == UIImage(named: "Me") {
            nameLabel.text = "Josh Kinney"
        } else {
            nameLabel.text = "Our Family"
            print("Error In Code")
        }
    }
}

