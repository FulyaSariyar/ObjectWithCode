//
//  ViewController.swift
//  ObjectWithCode
//
//  Created by Fulya Sarıyar on 14.06.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let width = view.frame.size.width
        let height = view.frame.size.height
        
        let myLabel = UILabel()
        myLabel.text = "Test Label"
        myLabel.textAlignment = .center
        //Eğer bir hata veriyorsa commandB ile build ediniz.
        myLabel.frame = CGRect(x:width * 0.5 - width * 0.8 / 2 , y:height * 0.5 - 50/2, width: width * 0.8, height: 100)
        view.addSubview(myLabel)
         
        //storyboard yerine code ile görünüm vermemizdeki amaç her ekrana uygun olmasını sağlamaktır.
        
        
        
        
    }


}

