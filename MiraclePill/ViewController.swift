//
//  ViewController.swift
//  MiraclePill
//
//  Created by Paula Lee on 2/17/17.
//  Copyright © 2017 Paula Lee. All rights reserved.
//

// an outlet is reference to something you can change
// action - is an action that the user performs in upon the
//      action being performed it calls some code
// weak - means it is a weak reference

//UIPickerViewDataSource - this tells our code that this is the data source for the picker, 
//      we know we need to fill it with some data, like for example: the 50 states

//UIPickerViewDelegate - we need to know when someone swipes that view, or scrolls
//      so that we know when it stops and what the data selected was, for example if i scroll to Texas and I want my
//      input to be Texas, that is what should be selected

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var pillImage: UIImageView!
    @IBOutlet weak var mpTitle: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var lineDivider: UIView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameValue: UITextField!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var addressValue: UITextField!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var cityValue: UITextField!
    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var countryValue: UITextField!
    @IBOutlet weak var zipcodeLabel: UILabel!
    @IBOutlet weak var zipcodeValue: UITextField!
    @IBOutlet weak var buyNowBtn: UIButton!
    @IBOutlet weak var successImage: UIImageView!
    
    
    
    let states = ["Alaska", "Arizona", "California", "Colorado", "Florida", "Hawaii", "Maine", "Nevada", "New York", "Oregon", "Texas", "Washington"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // every view controller has a base view
        // self.view.backgroundColor = UIColor.purple
        statePicker.dataSource = self // referring to the UIPickerViewDataSource
        statePicker.delegate = self // referromg to the UIPickerViewDelegate
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBtnPressed(_ sender: Any) {
        
        statePicker.isHidden = false // shows the state picker when the state button is pressed
        
    }
    
    // a component is like a column in a spreadsheet
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1 // just want one because it's just one state
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row] // get the row num from the "titleForRow"
    }
    
    // this function is what happens when you SELECT a row, which we want to return the state namestat
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal) // chooses the state or title in this case
            // the workaround if .normal did not exist would have been UIControlState()
        statePicker.isHidden = true // hides the picker
        countryLabel.isHidden = false
        countryValue.isHidden = false
        zipcodeLabel.isHidden = false
        zipcodeValue.isHidden = false
        buyNowBtn.isHidden = false
    }
    
    
    @IBAction func buyNowSelected(_ sender: Any) {
        pillImage.isHidden = true
        mpTitle.isHidden = true
        price.isHidden = true
        lineDivider.isHidden = true
        nameLabel.isHidden = true
        nameValue.isHidden = true
        addressLabel.isHidden = true
        addressValue.isHidden = true
        cityLabel.isHidden = true
        cityValue.isHidden = true
        stateLabel.isHidden = true
        statePicker.isHidden = true
        statePickerBtn.isHidden = true
        countryLabel.isHidden = true
        countryValue.isHidden = true
        zipcodeLabel.isHidden = true
        zipcodeValue.isHidden = true
        buyNowBtn.isHidden = true
        successImage.isHidden = false
    }

}

