//
//  ViewController.swift
//  TestForHome
//
//  Created by Sergey on 22.01.2020.
//  Copyright © 2020 Sergey. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    var oneLabel: UILabel!
    var twoLabel: UILabel!
    var onePicture: UIImage!
    var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        oneLabel = UILabel()
        oneLabel.frame = CGRect(x: 70, y: 70, width: 100, height: 50)
        oneLabel.text = "Добро пожаловать"
        oneLabel.translatesAutoresizingMaskIntoConstraints = false
        oneLabel.backgroundColor = .lightGray
        oneLabel.textAlignment = .center
        oneLabel.numberOfLines = 0
        view.addSubview(oneLabel)
        // Do any additional setup after loading the view.
        
        twoLabel = UILabel()
        twoLabel.frame = CGRect(x: 100, y: 130, width: 200, height: 0)
        twoLabel.text = "Приветствуем наш друг! Мы очень рады, что ты посетил наше приложение. Надеемся тебе все понравится! Будь счастлив"
        twoLabel.translatesAutoresizingMaskIntoConstraints = false
        twoLabel.numberOfLines = 0
        twoLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
        
        twoLabel.backgroundColor = .lightGray
        twoLabel.textAlignment = .center
        view.addSubview(twoLabel)
        
        onePicture = UIImage(named: "githubtest")
        imageView = UIImageView(image: onePicture)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        imageView.layer.borderColor = UIColor.black.cgColor
        imageView.layer.borderWidth = 1.5
        imageView.isUserInteractionEnabled = true
        let guestureRecognizer = UITapGestureRecognizer ( target: self, action: #selector (labelClicked (_ :)))
        imageView.addGestureRecognizer(guestureRecognizer)
        view.addSubview(imageView)
      
        constraintsLabel()
        }
    func constraintsLabel() {
        NSLayoutConstraint.activate(
     [oneLabel.centerXAnchor.constraint (equalTo: view.centerXAnchor),
     oneLabel.topAnchor.constraint (equalTo: view.topAnchor, constant: 150),
    
     twoLabel.centerXAnchor.constraint (equalTo: view.centerXAnchor),
     twoLabel.widthAnchor.constraint(equalToConstant: 200),
     //twoLabel.heightAnchor.constraint(equalToConstant: 150),
     twoLabel.topAnchor.constraint(equalTo: oneLabel.bottomAnchor, constant: 30),
     
     imageView.widthAnchor.constraint(equalToConstant: 30),
     imageView.heightAnchor.constraint(equalToConstant: 30),
     imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
     imageView.topAnchor.constraint(equalTo: twoLabel.bottomAnchor, constant: 30)
        ])
        }
    
    @objc func labelClicked(_ sender: Any) {
        let secondController = OneViewController()
        present(secondController, animated: true, completion: nil)
        print("UIImage clicked")
        
        
    }
}
