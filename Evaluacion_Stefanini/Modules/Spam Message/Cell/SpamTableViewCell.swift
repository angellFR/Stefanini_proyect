//
//  SpamTableViewCell.swift
//  Evaluacion_Stefanini
//
//  Created by Administrator on 05/07/23.
//

import UIKit

class SpamTableViewCell: UITableViewCell {
    
    static let identifier = "SpamTableViewCell"
    
    private var buttonSpam: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "xmark.bin"), for: .normal)
//        button.addTarget(self, action: #selector(spam), for: .touchUpInside)
        return button
    }()
    
     var labelName: UILabel = {
        let label = UILabel()
        label.text = "Juan Perez"
        return label
    }()
    
     var labelDescripcion: UILabel = {
        let label = UILabel()
        label.text = "Tarea Primer Parcial"
        return label
    }()
    
     var labelHour: UILabel = {
        let label = UILabel()
        label.text = "10:50"
        return label
    }()
    override func awakeFromNib() {
        super.awakeFromNib()
        setup()
     
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
setup()
        // Configure the view for the selected state
    }
    
    func setup(){
     
        addSubview(buttonSpam)
        addSubview(labelName)
        addSubview(labelHour)
        addSubview(labelDescripcion)
        
        buttonSpam.addAnchorsAndSize(width: 30, height: 50, left: 10, top: 5, right: nil, bottom: nil)
        labelName.addAnchorsAndSize(width: nil, height: nil, left: 15, top: 5, right: nil, bottom: nil,withAnchor: .left, relativeToView: buttonSpam)
        labelHour.addAnchorsAndSize(width: nil, height: nil, left: nil, top: 5, right: 2, bottom: nil)
        labelDescripcion.addAnchorsAndSize(width: nil, height: nil, left: 80, top: 5, right: nil, bottom: 0,withAnchor: .top,relativeToView: labelName)
        
    }
    
//    func configure(model: email){
//
//        labelName.text = model.name
//        labelHour.text = model.hour
//        labelDescripcion.text = "Asunto: \(model.detail)"
//        
//        }
    

}
