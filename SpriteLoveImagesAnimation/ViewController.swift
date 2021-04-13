//
//  ViewController.swift
//  SpriteLoveImagesAnimation
//
//  Created by Jimoh Babatunde  on 13/04/2021.
//  Copyright © 2021 Jimoh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.isUserInteractionEnabled = true
        imageView.image = UIImage(named: "tile00")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    var spriteImages  = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(imageView)
        imageView.heightAnchor.constraint(equalToConstant: 70).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 70).isActive = true
        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        // Add action
        imageView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(animateSpriteImages)))
        
        //Populate sprite images
        for i in 0..<29 {
            spriteImages.append(UIImage(named: "tile0\(i)")!)
        }
    }

    @objc func animateSpriteImages() {
        imageView.animationImages = spriteImages
        imageView.animationDuration = 0.5
        imageView.animationRepeatCount = 1
        imageView.startAnimating()
    }
}

