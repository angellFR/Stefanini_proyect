//
//  HomeTableViewCell.swift
//  Evaluacion_Stefanini
//
//  Created by Administrator on 04/07/23.
//

import UIKit
import CoreData

class HomeTableViewCell: UITableViewCell {
    static let identifier = "HomeTableViewCell"
    var favoritoValidation = 0
    var spamVlidation = 0
    var deleteValidation = 0
 

    
  
    
    private var buttonDestacado: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "heart"), for: .normal)
        button.addTarget(self, action: #selector(favorito), for: .touchUpInside)
        return button
    }()
    
    private var buttonSpam: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "xmark.bin"), for: .normal)
        button.addTarget(self, action: #selector(spam), for: .touchUpInside)
        return button
    }()
    
    private var buttonDelete: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "trash"), for: .normal)
        button.addTarget(self, action: #selector(deletMensaje), for: .touchUpInside)
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
        setup()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        setup()
        // Configure the view for the selected state
    }
    
    func setup(){
        addSubview(buttonDestacado)
        addSubview(buttonSpam)
        addSubview(labelName)
        addSubview(labelHour)
        addSubview(buttonDelete)
        addSubview(labelDescripcion)
        
        buttonDestacado.addAnchorsAndSize(width: 30, height: 50, left: 0, top: 5, right: nil, bottom:nil)
        buttonSpam.addAnchorsAndSize(width: 30, height: 50, left: 1, top: 5, right: nil, bottom: nil,withAnchor: .left, relativeToView: buttonDestacado)
        labelName.addAnchorsAndSize(width: nil, height: nil, left: 15, top: 5, right: nil, bottom: nil,withAnchor: .left, relativeToView: buttonSpam)
        labelHour.addAnchorsAndSize(width: nil, height: nil, left: nil, top: 5, right: 2, bottom: nil,withAnchor: .right,relativeToView: buttonDelete)
        labelDescripcion.addAnchorsAndSize(width: nil, height: nil, left: 80, top: 5, right: nil, bottom: 0,withAnchor: .top,relativeToView: labelName)
        buttonDelete.addAnchorsAndSize(width: 30, height: 50, left: nil, top: 5, right: 2, bottom: nil)
        
    }
    
    
    func configure(model: email){

        labelName.text = model.name
        labelHour.text = model.hour
        labelDescripcion.text = "Asunto: \(model.detail)"
        
        }
    
    @objc func deletMensaje(){
        print("Mensaje Borrado")
        if deleteValidation == 0 {
            buttonDelete.setImage(UIImage(systemName: "trash.fill"), for: .normal)
           print("correo eliminado")
        }
    }
    
    @objc func favorito(){
        
        if favoritoValidation == 1 {
            favoritoValidation = 0
            buttonDestacado.setImage(UIImage(systemName: "heart.fill"), for: .normal)
            print("Correo destacado")
            
        } else {
            buttonDestacado.setImage(UIImage(systemName: "heart"), for: .normal)
            favoritoValidation = 1
        }

    }
    
    @objc func spam(){
        
        if deleteValidation == 0 {
            buttonSpam.setImage(UIImage(systemName: "xmark.bin.fill"), for: .normal)
           print("correo en spam")
        }
        
        }
    
//        self.movieFavorite.reloadData()
    }
    


