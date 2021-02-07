//
//  ViewController.swift
//  Alert
//
//  Created by ksw on 2021/02/06.
//

import UIKit

class ViewController: UIViewController {
    
    let imgOn = UIImage(named:"1.jpg")
    let imgOff = UIImage(named:"2.jpg")
    let imgKill = UIImage(named:"3.jpg")
    
    var isLampOn = true
    

    @IBOutlet weak var Image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Image.image = imgOn
    }

    @IBAction func on(_ sender: Any) {
        if(isLampOn==true){
            let lampOnAlert = UIAlertController(title:"경고",message:"현재 On 상태입니다.",preferredStyle: UIAlertController.Style.alert)
            
            let onAction = UIAlertAction(title:"네 알겠습니다.",style:UIAlertAction.Style.default)
            
            lampOnAlert.addAction(onAction)
            present(lampOnAlert,animated:true,completion: nil)
            
        }else{
            Image.image = imgOn
            isLampOn = true
        }
        
    }
    
    @IBAction func off(_ sender: Any) {
        Image.image = imgOff
        isLampOn = false
    }
    @IBAction func kill(_ sender: Any) {
        Image.image = imgKill
    }
}

