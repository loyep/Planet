//
//  TargetAction.swift
//  Planet
//
//  Created by Loren on 2018/10/28.
//  Copyright © 2018 planet. All rights reserved.
//

import UIKit

protocol TargetAction {
    func performAction()
}

struct TargetActionWrapper<T: AnyObject>: TargetAction {
    
    weak var target: T?
    
    let action: (T) -> () -> ()
    
    func performAction() -> () {
        if let t = target {
            action(t)()
        }
    }
    
}

enum ControlEvent {
    
    case touchDown
    
    case touchDownRepeat
    
    case touchDragInside
    
    case touchDragOutside
    
    case touchDragEnter
    
    case touchDragExit
    
    case touchUpInside
    
    case touchUpOutside
    
    case touchCancel
    
    case valueChanged
    
    @available(iOS 9.0, *)
    case primaryActionTriggered
    
    case editingDidBegin
    
    case editingChanged
    
    case editingDidEnd
    
    case editingDidEndOnExit
    
    case allTouchEvents
    
    case allEditingEvents
    
    case applicationReserved
    
    case systemReserved
    
    case allEvents
}

class Control {
    
    var actions = [ControlEvent: TargetAction]()
    
    func setTarget<T: AnyObject>(target: T, action: @escaping(T) -> () -> (), controlEvent: ControlEvent) -> () {
        actions[controlEvent] = TargetActionWrapper(target: target, action: action)
    }
    
    func removeTargetForControlEvent(controlEvent: ControlEvent) {
        actions[controlEvent] = nil
    }
    
    func performActionForControlEvent(controlEvent: ControlEvent) {
        actions[controlEvent]?.performAction()
    }
}
