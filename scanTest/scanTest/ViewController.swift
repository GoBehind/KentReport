//
//  ViewController.swift
//  scanTest
//
//  Created by 王冠之 on 2020/6/5.
//  Copyright © 2020 Wangkuanchih. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVCaptureMetadataOutputObjectsDelegate, ScannerDelegate{
    
    
    @IBOutlet weak var mainView: UIView!
    private var scanner: Scanner?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.scanner = Scanner(withDelegate: self)
        
        guard let scanner = self.scanner else {
            return
        }
        
        scanner.requestCaptureSessionStartRunning()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Mark - AVFoundation delegate methods
    public func metadataOutput(_ output: AVCaptureMetadataOutput,
                               didOutput metadataObjects: [AVMetadataObject],
                               from connection: AVCaptureConnection) {
        guard let scanner = self.scanner else {
            return
        }
        scanner.metadataOutput(output,
                               didOutput: metadataObjects,
                               from: connection)
    }
    
    // Mark - Scanner delegate methods
    func cameraView() -> UIView{
        return self.mainView
    }
    
    func delegateViewController() -> UIViewController{
        return self
    }
    
    func scanCompleted(withCode code: String){
        print(code)
    }
}


