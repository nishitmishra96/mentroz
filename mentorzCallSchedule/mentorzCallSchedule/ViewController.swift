//
//  ViewController.swift
//  mentorzCallSchedule
//
//  Created by Himanshu on 08/03/19.
//  Copyright © 2019 craterzone. All rights reserved.
//

import UIKit
import iOSDropDown

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
    
    @IBOutlet weak var duration: DropDown!
    @IBOutlet weak var pickerview: UIPickerView!
    
    
    var data = [["01","02","03","04","05","06","07","08","09","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31"],
                ["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sept","Oct","Nov","Dec"],
                ["1","2","3","4","5","6","7","8","9","10","11","12"],
["01","02","03","04","05","06","07","08","09","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53","54","55","56","57","58","59","60"],["AM","PM"]]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        
        return data.count
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return data[component].count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return data[component][row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
    }

    @IBOutlet weak var timestampButton: UIButton!
    

    @IBOutlet weak var picker: UIView!
    
    @IBAction func buttonPressed(_ sender: Any) {
        
        if(picker.isHidden == false)
        {
            picker.isHidden = true
        }
        else
        {
            picker.isHidden = false
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        pickerview.dataSource  = self
        pickerview.delegate = self
        
    }


}

