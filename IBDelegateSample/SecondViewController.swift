//
//  SecondViewController.swift
//  IBDelegateSample
//


import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension SecondViewController: CustomViewDelegate {
    func customViewButtonTapped(_ sender: UIButton) {
        let message = "カスタムビューのボタンがタップされました"
        print("\(message)")
        let ac = UIAlertController(title: "\(message)", message:  "", preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(ac, animated: true, completion: nil)
    }
}

