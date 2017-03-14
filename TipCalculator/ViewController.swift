//
//  ViewController.swift
//  TipCalculator
//
//  Created by Rupali Solanki on 3/13/17.
//  Copyright © 2017 Rupali Solanki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtBillAmt: UITextField!
    @IBOutlet weak var txtTipPer: UITextField!
    @IBOutlet weak var lblTotalTip: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func btnCalculate(sender: AnyObject) {
        let tipPer = Double(txtTipPer.text!) ?? 0
        let billAmt  = Double(txtBillAmt.text!) ?? 0
        var tipAmt = billAmt * tipPer/100
        var totalAmt = tipAmt + billAmt
        lblTotalTip.text = String(format: "Total Bill: $%0.2f", totalAmt)
    }
}

