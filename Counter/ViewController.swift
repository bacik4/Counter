//
//  ViewController.swift
//  Counter
//
//  Created by Игорь Глебов on 23.11.2025.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var increaseButton: UIButton!
    @IBOutlet private weak var decreaseButton: UIButton!
    @IBOutlet private weak var labelUI: UILabel!
    @IBOutlet private weak var resetButton: UIButton!
    @IBOutlet private weak var historyUI: UITextView!
    
    private var counter: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        increaseButton.tintColor = .red
        labelUI.text = "Значение счётчика: 0"
        historyUI.text = "История изменений:"
        historyUI.isEditable = false
    }

    @IBAction private func increaseAction(_ sender: Any) {
        counter += 1
        labelUI.text = "Значение счётчика: \(counter)"
        historyUI.text += "\n\(Date()): значение изменено на +1"
    }
    @IBAction private func decreaseAction(_ sender: Any) {
        if counter > 0{
            counter -= 1
            historyUI.text += "\n\(Date()): значение изменено на -1"
        } else{
            historyUI.text += "\n\(Date()): попытка уменьшить значение счётчика ниже 0"
        }
        labelUI.text = "Значение счётчика: \(counter)"
    }
    
    @IBAction private func resetAction(_ sender: Any) {
        counter = 0
        labelUI.text = "Значение счётчика: \(counter)"
        historyUI.text += "\n\(Date()): значение сброшено"
    }
    
}

