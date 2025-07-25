//
//  ViewController.swift, MainViewController.storyboard
//  T3Project
//
//  Created by Mikhail A. Zhigulin of Novosibirsk.
//
//  Unlicensed Free Software.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet private(set) weak var greetingsLabel: UILabel!
    @IBOutlet private(set) weak var actualDarkModeValueLabel: UILabel!

    class func storyboardInstance() -> MainViewController {

        let storyboard = UIStoryboard(name: String(describing: self), bundle: nil)
        let screen = storyboard.instantiateInitialViewController() as? MainViewController

        // Do default setup; don't set any parameter causing loadView up, breaks unit tests
        screen?.modalTransitionStyle = UIModalTransitionStyle.partialCurl
        // screen?.view.backgroundColor = UIColor.yellow
        return screen ?? MainViewController()
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        guard value(forKey: "storyboardIdentifier") != nil else { return }

        localizeContent()

        // Dark Mode setup
        DarkModeAgent.register(stakeholder: self, selector: #selector(makeUp))
    }

    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)

        if #available(iOS 13.0, *) {
            DarkModeAgent.processTraitCollectionDidChange(previousTraitCollection)
        }
    }

    @objc private func makeUp() {

        log.message("[\(type(of: self))].\(#function)")

        actualDarkModeValueLabel.text = "^_^ \(DarkModeAgent.DarkModeUserChoice)"

        // self.view.backgroundColor = DarkMode.style == .light ? .yellow : .gray
        self.view.backgroundColor = UIColor.perseusBlue
    }

    private func localizeContent() {
        // NSLocale.currentLocaleDidChangeNotification
        greetingsLabel.text = "greetings".localizedValue
    }
}
