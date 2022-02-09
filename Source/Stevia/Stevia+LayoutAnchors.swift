//
//  Stevia+LayoutAnchors.swift
//  Stevia
//
//  Created by Sacha DSO on 09/10/2017.
//  Copyright © 2017 Sacha Durand Saint Omer. All rights reserved.
//

#if canImport(UIKit)
import UIKit

@available(iOS 9.0, *)
public struct SteviaLayoutYAxisAnchor {
    let anchor: NSLayoutYAxisAnchor
    let constant: Double
    
    init(anchor: NSLayoutYAxisAnchor, constant: Double = 0) {
        self.anchor = anchor
        self.constant = constant
    }
}

@available(iOS 9.0, *)
public struct SteviaLayoutXAxisAnchor {
    let anchor: NSLayoutXAxisAnchor
    let constant: Double
    
    init(anchor: NSLayoutXAxisAnchor, constant: Double = 0) {
        self.anchor = anchor
        self.constant = constant
    }
}

@available(iOS 9.0, *)
public extension UILayoutGuide {

    var SteviaTop: SteviaLayoutYAxisAnchor {
        return SteviaLayoutYAxisAnchor(anchor: topAnchor)
    }

    var SteviaBottom: SteviaLayoutYAxisAnchor {
        return SteviaLayoutYAxisAnchor(anchor: bottomAnchor)
    }
    
    var SteviaLeft: SteviaLayoutXAxisAnchor {
        return SteviaLayoutXAxisAnchor(anchor: leftAnchor)
    }
    
    var SteviaRight: SteviaLayoutXAxisAnchor {
        return SteviaLayoutXAxisAnchor(anchor: rightAnchor)
    }
    
    var SteviaLeading: SteviaLayoutXAxisAnchor {
        return SteviaLayoutXAxisAnchor(anchor: leadingAnchor)
    }
    
    var SteviaTrailing: SteviaLayoutXAxisAnchor {
        return SteviaLayoutXAxisAnchor(anchor: trailingAnchor)
    }

    var SteviaCenterX: SteviaLayoutXAxisAnchor {
        return SteviaLayoutXAxisAnchor(anchor: centerXAnchor)
    }
    
    var SteviaCenterY: SteviaLayoutYAxisAnchor {
        return SteviaLayoutYAxisAnchor(anchor: centerYAnchor)
    }
}

@available(iOS 9.0, *)
@discardableResult
public func == (left: SteviaAttribute, right: SteviaLayoutYAxisAnchor) -> NSLayoutConstraint {
    
    var constraint = NSLayoutConstraint()
    
    if left.attribute == .top {
        constraint = left.view.topAnchor.constraint(equalTo: right.anchor, constant: CGFloat(right.constant))
    }
    
    if left.attribute == .bottom {
        constraint = left.view.bottomAnchor.constraint(equalTo: right.anchor, constant: CGFloat(right.constant))
    }
    
    if left.attribute == .centerY {
        constraint = left.view.centerYAnchor.constraint(equalTo: right.anchor, constant: CGFloat(right.constant))
    }
    
    constraint.isActive = true
    return constraint
}

@available(iOS 9.0, *)
@discardableResult
public func == (left: SteviaAttribute, right: SteviaLayoutXAxisAnchor) -> NSLayoutConstraint {
    
    var constraint = NSLayoutConstraint()
    
    if left.attribute == .left {
        constraint = left.view.leftAnchor.constraint(equalTo: right.anchor, constant: CGFloat(right.constant))
    }
    
    if left.attribute == .right {
        constraint = left.view.rightAnchor.constraint(equalTo: right.anchor, constant: CGFloat(right.constant))
    }
    
    if left.attribute == .leading {
        constraint = left.view.leadingAnchor.constraint(equalTo: right.anchor, constant: CGFloat(right.constant))
    }
    
    if left.attribute == .trailing {
        constraint = left.view.trailingAnchor.constraint(equalTo: right.anchor, constant: CGFloat(right.constant))
    }
    
    if left.attribute == .centerX {
        constraint = left.view.centerXAnchor.constraint(equalTo: right.anchor, constant: CGFloat(right.constant))
    }
    
    constraint.isActive = true
    return constraint
}

// SteviaLayoutYAxisAnchor

@available(iOS 9.0, *)
@discardableResult
public func + (left: SteviaLayoutYAxisAnchor, right: Double) -> SteviaLayoutYAxisAnchor {
    return SteviaLayoutYAxisAnchor(anchor: left.anchor, constant: right)
}

@available(iOS 9.0, *)
@discardableResult
public func - (left: SteviaLayoutYAxisAnchor, right: Double) -> SteviaLayoutYAxisAnchor {
    return SteviaLayoutYAxisAnchor(anchor: left.anchor, constant: -right)
}

@available(iOS 9.0, *)
@discardableResult
public func + (left: SteviaLayoutXAxisAnchor, right: Double) -> SteviaLayoutXAxisAnchor {
    return SteviaLayoutXAxisAnchor(anchor: left.anchor, constant: right)
}

@available(iOS 9.0, *)
@discardableResult
public func - (left: SteviaLayoutXAxisAnchor, right: Double) -> SteviaLayoutXAxisAnchor {
    return SteviaLayoutXAxisAnchor(anchor: left.anchor, constant: -right)
}

@available(iOS 9.0, *)
@discardableResult
public func + (left: SteviaLayoutYAxisAnchor, right: CGFloat) -> SteviaLayoutYAxisAnchor {
    return SteviaLayoutYAxisAnchor(anchor: left.anchor, constant: Double(right))
}

@available(iOS 9.0, *)
@discardableResult
public func - (left: SteviaLayoutYAxisAnchor, right: CGFloat) -> SteviaLayoutYAxisAnchor {
    return SteviaLayoutYAxisAnchor(anchor: left.anchor, constant: Double(-right))
}

@available(iOS 9.0, *)
@discardableResult
public func + (left: SteviaLayoutXAxisAnchor, right: CGFloat) -> SteviaLayoutXAxisAnchor {
    return SteviaLayoutXAxisAnchor(anchor: left.anchor, constant: Double(right))
}

@available(iOS 9.0, *)
@discardableResult
public func - (left: SteviaLayoutXAxisAnchor, right: CGFloat) -> SteviaLayoutXAxisAnchor {
    return SteviaLayoutXAxisAnchor(anchor: left.anchor, constant: Double(-right))
}

@available(iOS 9.0, *)
@discardableResult
public func + (left: SteviaLayoutYAxisAnchor, right: Int) -> SteviaLayoutYAxisAnchor {
    return SteviaLayoutYAxisAnchor(anchor: left.anchor, constant: Double(right))
}

@available(iOS 9.0, *)
@discardableResult
public func - (left: SteviaLayoutYAxisAnchor, right: Int) -> SteviaLayoutYAxisAnchor {
    return SteviaLayoutYAxisAnchor(anchor: left.anchor, constant: Double(-right))
}

@available(iOS 9.0, *)
@discardableResult
public func + (left: SteviaLayoutXAxisAnchor, right: Int) -> SteviaLayoutXAxisAnchor {
    return SteviaLayoutXAxisAnchor(anchor: left.anchor, constant: Double(right))
}

@available(iOS 9.0, *)
@discardableResult
public func - (left: SteviaLayoutXAxisAnchor, right: Int) -> SteviaLayoutXAxisAnchor {
    return SteviaLayoutXAxisAnchor(anchor: left.anchor, constant: Double(-right))
}

// UILayoutSupport

@available(iOS 9.0, *)
public extension UILayoutSupport {
    
    var SteviaTop: SteviaLayoutYAxisAnchor {
        return SteviaLayoutYAxisAnchor(anchor: topAnchor)
    }
    
    var SteviaBottom: SteviaLayoutYAxisAnchor {
        return SteviaLayoutYAxisAnchor(anchor: bottomAnchor)
    }
}
#endif
