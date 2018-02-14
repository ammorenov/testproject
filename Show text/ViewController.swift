//
//  ViewController.swift
//  Show text
//
//  Created by Alexander Morenov on 06/02/2018.
//  Copyright © 2018 Alexander Morenov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labelText: UILabel!
    @IBAction func onShowTextClicked(_ sender: Any) {
        labelText.text = "Ты хороший!"
    }
    @IBAction func onHideButtonClicked(_ sender: Any) {
       labelText.text = "Show text"
    }
    
    @IBOutlet weak var comfirmLabel: UILabel!
    
    @IBAction func comfirmSwitch(_ sender: UISwitch) {
        
        
        if (sender .isOn == true)
        {
            comfirmLabel.text = "Да, я хороший!"
            
        }
        else
        
            {
                
            self.comfirmLabel.text = "Нет, я плохой!"
            
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

