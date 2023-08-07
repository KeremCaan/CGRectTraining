//
//  ViewController.swift
//  CGRectNeonAcademy
//
//  Created by Kerem Caan on 28.07.2023.
//

import UIKit


class ViewController: UIViewController {
    
    let comedyLabel : UILabel = UILabel(frame: CGRect(x: 120, y: 50, width: 200, height: 40))
    let box : UIView = UIView(frame: CGRect(x: 0, y: 0, width: 500, height: 1000))
    let comedyImageView : UIImageView = UIImageView(frame: CGRect(x: 50, y: 200, width: 300, height: 300))
    let ticketImageView : UIImageView = UIImageView(frame: CGRect(x: 50, y: 500, width: 300, height: 300))
    let ticketLabel : UILabel = UILabel(frame: CGRect(x: 120, y: 750, width: 200, height: 100))

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    
    func configureUI() {
        
        view.addSubview(box)
        box.backgroundColor = .white
        box.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(comedyLabel)
        comedyLabel.text = "NeonComedy"
        comedyLabel.font = .systemFont(ofSize: 30)
        comedyLabel.textColor = .black

        
        view.addSubview(comedyImageView)
        comedyImageView.contentMode = .scaleAspectFill
        comedyImageView.image = UIImage(named: "comedy")
        comedyImageView.clipsToBounds = true
        
        view.addSubview(ticketImageView)
        ticketImageView.contentMode = .scaleAspectFill
        ticketImageView.image = UIImage(named: "ticket")
        ticketImageView.clipsToBounds = true
        
        view.addSubview(ticketLabel)
        ticketLabel.text = "NeonComedy show is upcoming Friday."
        ticketLabel.font = .systemFont(ofSize: 18)
        ticketLabel.numberOfLines = 0
        ticketLabel.textColor = .black
    }

}

