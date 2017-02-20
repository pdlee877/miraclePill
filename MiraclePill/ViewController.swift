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

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    
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
        statePicker.isHidden = true // hides the picker
    }

}

