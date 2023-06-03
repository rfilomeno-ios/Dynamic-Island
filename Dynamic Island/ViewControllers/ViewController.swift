//
//  ViewController.swift
//  Dynamic Island
//
//  Created by Rodrigo Filomeno on 03/06/23.
//

import UIKit

/// Primeiro preparamos o app para ViewCode
/// na primeira função SceneDelegate iniciamos esse controller como root controler

///  guard let windowScene = (scene as? UIWindowScene) else { return }
///  let vc = ViewController()
///  let window = UIWindow(windowScene: windowScene)
///  window.rootViewController = vc
///  window.makeKeyAndVisible()
///  self.window = window

///  Para colocarmos o Dynamic Island precisamos adicionar no info.plist dentro do Information property list o seguinte:
///   NSSupportsLiveActivities = YES

///   agora clicar no projeto ir em file -> new -> Target -> Widget Extension
///   deixar o Live ligado e ao criar, clicar em activate!
///     Prontinho já temos uma pasta com tudo que precisamos pra Dynamic Island

class ViewController: UIViewController {
    
    private let dynimicIslandView = DynamicIslandView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .secondarySystemBackground
        title = "Dynamic Island"
        setUpView()
    }
    private func setUpView(){
        ()
        view.addSubview(dynimicIslandView)
        NSLayoutConstraint.activate([
            dynimicIslandView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            dynimicIslandView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            dynimicIslandView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            dynimicIslandView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        ])
    }
}




