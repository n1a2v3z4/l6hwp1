//
//  ViewController.swift
//  l6hw
//
//  Created by Cергей Иванович on 6.08.21.
//

import UIKit

class ViewController: UIViewController {
    var boolButton = UIButton(type: UIButton.ButtonType.custom) as UIButton
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
        
    override func viewWillAppear(_ animated: Bool) {
        boolButton = UIButton (frame:
                                    CGRect (x: 100, y: 100, width: 100, height: 100)
        )
        
        boolButton.backgroundColor = .blue
        boolButton.layer.cornerRadius = 50
        boolButton.setTitle("Нажимай", for: .normal)
        boolButton.center = CGPoint(x: view.frame.maxX/2 , y: view.frame.maxY/2)
        view.addSubview(boolButton)
        boolButton.addTarget(self, action: #selector(random(sender:)), for: UIControl.Event.touchUpInside)
        view.backgroundColor = .cyan
    }
    
    
    @objc func random (sender: UIButton!) {
        
        boolButton.center = CGPoint(x: CGFloat.random(in: 0...view.frame.maxX) , y: CGFloat.random(in: 0...view.frame.maxY))
//        boolButton.isHidden = false
//        if boolButton.isHidden {
//            boolButton.center = CGPoint(x: CGFloat.random(in: 0...400) , y: CGFloat.random(in: 0...400))
//        } else {
//            boolButton.center = CGPoint(x: CGFloat.random(in: 0...400) , y: CGFloat.random(in: 0...400))
//
//        }
    }
}



