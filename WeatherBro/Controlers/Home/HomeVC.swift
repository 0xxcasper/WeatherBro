//
//  HomeVC.swift
//  WeatherBro
//
//  Created by SangNX on 5/30/20.
//  Copyright © 2020 SangNX. All rights reserved.
//

import UIKit

class HomeVC: BaseController {

    @IBOutlet weak var clockView: AnalogClockView!
    @IBOutlet weak var btn_next: UIButton!
    @IBOutlet weak var lbl_timer: UILabel!
    
    var timer = Timer()

    override func viewDidLoad() {
        super.viewDidLoad()
        setTimer()
        setupView()
        getCurrentTimer()
    }

    func setupView() {
        clockView.backgroundColor = .clear
        btn_next.setGradient()
        btn_next.setTitleColor(.white, for: .normal)
        btn_next.layer.cornerRadius = 20
        btn_next.layer.masksToBounds = true
    }
    
    func getCurrentTimer() {
        let _ = Timer.scheduledTimer(timeInterval: 10, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    func setTimer() {
        let date = Date()
        let calendar = Calendar.current
        let hour = calendar.component(.hour, from: date)
        let minutes = calendar.component(.minute, from: date)
        let month = calendar.component(.month, from: date)
        let day = calendar.component(.day, from: date)
        
        var _minutes = "\(minutes)"
        if(minutes < 10) {
            _minutes = "0\(minutes)"
        }
        
        lbl_timer.text = "\(day) \(Utilities.convertMonthVnes(month: month)) \(hour):\(_minutes)"
    }
    
    @objc func updateTimer() {
        setTimer()
    }
    
    @IBAction func onPressNext(_ sender: Any) {
        self.makeBrowerInApp(url: WEATHER_URL)
    }
    
}
