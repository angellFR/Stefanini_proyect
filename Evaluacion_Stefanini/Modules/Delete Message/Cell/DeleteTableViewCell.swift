//
//  DeleteTableViewCell.swift
//  Evaluacion_Stefanini
//
//  Created by Administrator on 05/07/23.
//

import UIKit

class DeleteTableViewCell: UITableViewCell {
    static let identifier = "DeleteTableViewCell"
    private var buttonDelete: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "trash"), for: .normal)
//        button.addTarget(self, action: #selector(deletMensaje), for: .touchUpInside)
        return button
    }()
    
    private var labelName: UILabel = {
        let label = UILabel()
        label.text = "Juan Perez"
        return label
    }()
    
    private var labelDescripcion: UILabel = {
        let label = UILabel()
        label.text = "Tarea Primer Parcial"
        return label
    }()
    
    private var labelHour: UILabel = {
        let label = UILabel()
        label.text = "10:50"
        return label
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
setup()
        // Configure the view for the selected state
    }
    
    func setup(){
       
        addSubview(labelName)
        addSubview(labelHour)
        addSubview(buttonDelete)
        addSubview(labelDescripcion)
        
        labelName.addAnchorsAndSize(width: nil, height: nil, left: 15, top: 5, right: nil, bottom: nil)
        labelHour.addAnchorsAndSize(width: nil, height: nil, left: nil, top: 5, right: 2, bottom: nil,withAnchor: .right,relativeToView: buttonDelete)
        labelDescripcion.addAnchorsAndSize(width: nil, height: nil, left: 20, top: 5, right: nil, bottom: 0,withAnchor: .top,relativeToView: labelName)
        buttonDelete.addAnchorsAndSize(width: 30, height: 50, left: nil, top: 5, right: 2, bottom: nil)
        
    }
    func configure(model: email){

        labelName.text = model.name
        labelHour.text = model.hour
        labelDescripcion.text = "Asunto: \(model.detail)"
        
        }
}
