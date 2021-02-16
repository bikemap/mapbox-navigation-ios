//
//  RouteController.swift
//  MapboxCoreNavigation
//
//  Created by Oleksii on 16.02.21.
//  Copyright © 2021 Mapbox. All rights reserved.
//

import Foundation

// Class replaces original RouteController to re-use it's constants
open class RouteController {
  
    public enum DefaultBehavior {
        public static let shouldRerouteFromLocation: Bool = true
        public static let shouldDiscardLocation: Bool = true
        public static let didArriveAtWaypoint: Bool = true
        public static let shouldPreventReroutesWhenArrivingAtWaypoint: Bool = true
        public static let shouldDisableBatteryMonitoring: Bool = true
    }
    /**
     Keys in the user info dictionaries of various notifications posted by instances of `RouteController`.
     */
    public struct NotificationUserInfoKey: Hashable, Equatable, RawRepresentable {
        public typealias RawValue = String

        public var rawValue: String

        public init(rawValue: String) {
            self.rawValue = rawValue
        }
        
        /**
         A key in the user info dictionary of a `Notification.Name.routeControllerProgressDidChange`, `Notification.Name.routeControllerDidPassVisualInstructionPoint`, or `Notification.Name.routeControllerDidPassSpokenInstructionPoint` notification. The corresponding value is a `RouteProgress` object representing the current route progress.
         */
        public static let routeProgressKey: NotificationUserInfoKey = .init(rawValue: "progress")
        
        /**
         A key in the user info dictionary of a `Notification.Name.routeControllerProgressDidChange`, `Notification.Name.routeControllerWillReroute`, or `Notification.Name.routeControllerDidReroute` notification. The corresponding value is a `CLLocation` object representing the current idealized user location.
         */
        public static let locationKey: NotificationUserInfoKey = .init(rawValue: "location")
        
        /**
         A key in the user info dictionary of a `Notification.Name.routeControllerProgressDidChange` notification. The corresponding value is a `CLLocation` object representing the current raw user location.
         */
        public static let rawLocationKey: NotificationUserInfoKey = .init(rawValue: "rawLocation")
        
        /**
         A key in the user info dictionary of a `Notification.Name.routeControllerDidFailToReroute` notification. The corresponding value is an `NSError` object indicating why `RouteController` was unable to calculate a new route.
         */
        public static let routingErrorKey: NotificationUserInfoKey = .init(rawValue: "error")
        
        /**
         A key in the user info dictionary of an `Notification.Name.routeControllerDidPassVisualInstructionPoint`. The corresponding value is an `VisualInstruction` object representing the current visual instruction.
         */
        public static let visualInstructionKey: NotificationUserInfoKey = .init(rawValue: "visualInstruction")
        
        /**
         A key in the user info dictionary of a `Notification.Name.routeControllerDidPassSpokenInstructionPoint` notification. The corresponding value is an `SpokenInstruction` object representing the current visual instruction.
         */
        public static let spokenInstructionKey: NotificationUserInfoKey = .init(rawValue: "spokenInstruction")
        
        /**
         A key in the user info dictionary of a `Notification.Name.routeControllerDidReroute` notification. The corresponding value is an `NSNumber` instance containing a Boolean value indicating whether `RouteController` proactively rerouted the user onto a faster route.
         */
        public static let isProactiveKey: NotificationUserInfoKey = .init(rawValue: "RouteControllerDidFindFasterRoute")
    }
}
