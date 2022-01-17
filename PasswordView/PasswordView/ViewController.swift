//
//  ViewController.swift
//  PasswordView
//
//  Created by swieeft on 2021/12/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var passwordStackView: UIStackView!
    @IBOutlet weak var passwordView1: UIView!
    @IBOutlet weak var passwordView2: UIView!
    @IBOutlet weak var passwordView3: UIView!
    @IBOutlet weak var passwordView4: UIView!
    
    private var password: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configrationUI()
    }
    
    func configrationUI() {
        passwordView1.layer.cornerRadius = 12.5
        passwordView1.layer.borderColor = UIColor.lightGray.cgColor
        passwordView1.layer.borderWidth = 2
        passwordView1.layer.masksToBounds = true
        
        passwordView2.layer.cornerRadius = 12.5
        passwordView2.layer.borderColor = UIColor.lightGray.cgColor
        passwordView2.layer.borderWidth = 2
        passwordView2.layer.masksToBounds = true
        
        passwordView3.layer.cornerRadius = 12.5
        passwordView3.layer.borderColor = UIColor.lightGray.cgColor
        passwordView3.layer.borderWidth = 2
        passwordView3.layer.masksToBounds = true
        
        passwordView4.layer.cornerRadius = 12.5
        passwordView4.layer.borderColor = UIColor.lightGray.cgColor
        passwordView4.layer.borderWidth = 2
        passwordView4.layer.masksToBounds = true
    }
    
    @IBAction func numberButtonAction(_ sender: UIButton) {
        password += "\(sender.tag)"
    
        let index = password.count - 1
        
        if index >= 0 && index < 4 {
            
            UIView.animate(withDuration: 0.15) {
                self.passwordStackView.subviews[index].transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
                self.passwordStackView.subviews[index].backgroundColor = .lightGray
            } completion: { _ in
                UIView.animate(withDuration: 0.15) {
                    self.passwordStackView.subviews[index].transform = .identity
                }
            }

            
        }
        
        print(password)
    }
    
    @IBAction func deleteButtonAction(_ sender: Any) {
        if password.isEmpty == false {
            password.removeLast()
            
            let index = password.count
            self.passwordStackView.subviews[index].backgroundColor = .white
        }
        
        print(password)
    }
    
    @IBAction func applyButton(_ sender: Any) {
    }
}


