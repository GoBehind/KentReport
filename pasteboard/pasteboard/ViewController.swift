//
//  ViewController.swift
//  pasteboard
//
//  Created by 王冠之 on 2020/6/5.
//  Copyright © 2020 Wangkuanchih. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func copyPressed(_ sender: Any) {
        UIPasteboard.general.string = textF.text
    }
    
}

