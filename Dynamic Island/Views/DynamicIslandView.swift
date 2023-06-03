//
//  DynamicIslandView.swift
//  Dynamic Island
//
//  Created by Rodrigo Filomeno on 03/06/23.
//

import UIKit

final class DynamicIslandView: UIView {
    
    private let viewModel = DynamicIslandViewViewModel()
    
    // MARK: - View Components
    
    private let playButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .systemGreen
        button.setTitle("Play", for: .normal)
        button.layer.cornerRadius = 15
//        button.layer.borderWidth = 1
        return button
    }()
    
    private let updateButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .systemYellow
        button.layer.cornerRadius = 15
//        button.layer.borderWidth = 1
        button.setTitle("Update", for: .normal)

        return button
    }()
    
    private let stopButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .systemRed
        button.layer.cornerRadius = 15
//        button.layer.borderWidth = 1

        button.setTitle("Stop", for: .normal)

        return button
    }()
    
    
    // MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false

        addSubviews(playButton, updateButton, stopButton)
        addConstraints()
        backgroundColor = .secondarySystemBackground
    }
    
    required init?(coder: NSCoder) {
        fatalError("Unsuported")
    }
    
    
    private func addConstraints() {
        NSLayoutConstraint.activate([
            updateButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            updateButton.centerYAnchor.constraint(equalTo: centerYAnchor),
            updateButton.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor, constant: 100),
            updateButton.rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor, constant: -100),

            
            playButton.bottomAnchor.constraint(equalTo: updateButton.topAnchor, constant: -25),
            playButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            playButton.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor, constant: 100),
            playButton.rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor, constant: -100),
            
            stopButton.topAnchor.constraint(equalTo: updateButton.bottomAnchor, constant: 25),
            stopButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            stopButton.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor, constant: 100),
            stopButton.rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor, constant: -100),

        ])
        
    }
}
