//
//  PriorityViewController.swift
//  SeSAC_HW_Reminders
//
//  Created by 박지은 on 2/15/24.
//

import UIKit
import SnapKit

class PriorityViewController: BaseViewController {
    
//    let segment: UISegmentedControl = {
//        let control = UISegmentedControl()
//        control.removeAllSegments()
//        toDoCase.allCases.enumerated().forEach { (index, section) in
//            <#code#>
//        }
//        return control
//    }()

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func configureHierarchy() {
//        [segment].forEach {
//            view.addSubview($0)
//        }
    }
    
    override func configureConstraints() {
//        segment.snp.makeConstraints {
//            $0.horizontalEdges.equalToSuperview().inset(20)
//            $0.top.equalTo(view.safeAreaLayoutGuide).offset(20)
//            $0.height.equalTo(40)
//        }
    }
    
    override func configureView() {
        view.backgroundColor = .white
    }

}