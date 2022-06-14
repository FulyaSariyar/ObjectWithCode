//
//  ViewController.swift
//  ObjectWithCode
//
//  Created by Fulya Sarıyar on 14.06.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var  myLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let width = view.frame.size.width
        let height = view.frame.size.height
        
        
        myLabel.text = "Test Label"
        myLabel.textAlignment = .center
        //Eğer bir hata veriyorsa commandB ile build ediniz.
        myLabel.frame = CGRect(x:width * 0.5 - width * 0.8 / 2 , y:height * 0.5 - 50/2, width: width * 0.8, height: 100)
        view.addSubview(myLabel)
         
        //storyboard yerine code ile görünüm vermemizdeki amaç her ekrana uygun olmasını sağlamaktır.
        
        //Button Görünüm Ayarları
        let myButton = UIButton()
        myButton.setTitle("My Button", for: UIControl.State.normal)
        myButton.setTitleColor(UIColor.blue, for: UIControl.State.normal)
        
        myButton.frame = CGRect(x:width * 0.5 - 100, y:height * 0.6, width: 200, height: 100)
        view.addSubview(myButton)
        
        //Buton Tıklanma Ayarları
        myButton.addTarget(self, action: #selector(ViewController.myAction), for: UIControl.Event.touchUpInside)
        
    }
    @objc func myAction(){
        myLabel.text = "Tapped"
    }
 //Not: Kompleks projelerde profesyonel ios geliştirici şirketleri storyboard yerine code ile görünümler oluşturmayı tercih ediyorlardı fakat zamanla bu yerini SwiftUI'a bıkaracak gibi görünüyor.
//Happy Coding y'all :)
}

