//
//  ViewController.swift
//  AnimationConstraints
//
//  Created by Rafael Farias on 02/04/18.
//  Copyright © 2018 Rafael Farias. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    //UIImage
    lazy var myImage : UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "Screen Shot 2018-03-13 at 14.00.22"))
        //habilitar o auto layout
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.isUserInteractionEnabled = true
        imageView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleAnimate)))
        return imageView
    }()
    
    @objc func handleAnimate(){
        
        leftAnchor?.isActive = false
        rightAnchor?.isActive = true
        
        rightAnchor?.constant = -16
        
        topAnchor?.isActive = false
        bottomAnchor?.isActive = true
        
        widthAnchor?.constant = 200
        heightAnchor?.constant = 200
        
        print("animando")
        
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
            //
            self.view.layoutIfNeeded()
        }, completion: nil)
        
    }
    
    var leftAnchor : NSLayoutConstraint?
    var rightAnchor : NSLayoutConstraint?
    
    var topAnchor : NSLayoutConstraint?
    var bottomAnchor : NSLayoutConstraint?
    
    var widthAnchor : NSLayoutConstraint?
    var heightAnchor : NSLayoutConstraint?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(myImage)
        
        topAnchor = myImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor)
        topAnchor?.isActive = true
        
        bottomAnchor = myImage.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)

        
        leftAnchor = myImage.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor)
        leftAnchor?.isActive = true
        
        rightAnchor = myImage.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor)

        widthAnchor = myImage.widthAnchor.constraint(equalToConstant: 100)
        widthAnchor?.isActive = true
        
        heightAnchor = myImage.heightAnchor.constraint(equalToConstant: 100)
        heightAnchor?.isActive = true
        
        
//        myImage.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        
    }
    
    
}

