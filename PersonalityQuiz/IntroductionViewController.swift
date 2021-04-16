//
//  IntroductionViewController.swift
//  PersonalityQuiz
//
//  Created by Dmitry Reshetnik on 13.04.2021.
//

import UIKit

class IntroductionViewController: UIViewController {
    var appDelegate = (UIApplication.shared.delegate as! AppDelegate)
    var willConnectToCount = 0
    var didBecomeActiveCount = 0
    var willResignActiveCount = 0
    var willEnterForegroundCount = 0
    var didEnterBackgroundCount = 0
    
    @IBOutlet weak var didFinishLaunchingLabel: UILabel!
    @IBOutlet weak var configurationForConnectingLabel: UILabel!
    @IBOutlet weak var willConnectToLabel: UILabel!
    @IBOutlet weak var didBecomeActiveLabel: UILabel!
    @IBOutlet weak var willResignActiveLabel: UILabel!
    @IBOutlet weak var willEnterForegroundLabel: UILabel!
    @IBOutlet weak var didEnterBackgroundLabel: UILabel!
    
    @IBAction func unwindToQuizIntroduction(segue: UIStoryboardSegue) {
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func updateView() {
        didFinishLaunchingLabel.text = "-application(_:didFinishLaunchingWithOptions:) \(appDelegate.launchCount) time(s)"
        configurationForConnectingLabel.text = "-application(_:configurationForConnecting:options:) \(appDelegate.configurationForConnectingCount) time(s)"
        willConnectToLabel.text = "-scene(_:willConnectTo:options:) \(willConnectToCount) time(s)"
        didBecomeActiveLabel.text = "-sceneDidBecomeActive(_:) \(didBecomeActiveCount) time(s)"
        willResignActiveLabel.text = "-sceneWillResignActive(_:) \(willResignActiveCount) time(s)"
        willEnterForegroundLabel.text = "-sceneWillEnterForeground(_:) \(willEnterForegroundCount) time(s)"
        didEnterBackgroundLabel.text = "-sceneDidEnterBackground(_:) \(didEnterBackgroundCount) time(s)"
    }


}

