//
//  ViewController.swift
//  AnimationClass
//
//  Created by Alumno on 17/02/20.
//  Copyright © 2020 Patricion Saldivar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var sliderButton: UISlider!
    @IBOutlet weak var sliderView: UIView!
    @IBAction func slider(_ sender: UISlider) {
        UIView.animate(withDuration: 1){
            self.sliderImage.frame.origin.x = CGFloat(sender.value) * self.sliderView.frame.size.width
        }
    }
    
    @IBOutlet weak var segmentedView: UIView!
    @IBOutlet weak var sliderImage: UIImageView!
    @IBOutlet weak var segmentedLabel: UILabel!
    @IBOutlet weak var segmentedControlButton: UISegmentedControl!
    @IBAction func segmentedControl(_ sender: UISegmentedControl) {
        if(segmentedControlButton.selectedSegmentIndex == 0){
            UIView.animate(withDuration: 1){
                self.segmentedLabel.frame.origin.x = 10
                       }
        }else{
            UIView.animate(withDuration: 1){
                                 self.segmentedLabel.frame.origin.x = self.segmentedView.frame.size.width - 100
                                 }
        }
       
    }
    


}

