//
// This source file is part of the Stanford Prisma Application based on the Stanford Spezi Template Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import HealthKit


/// A `PrismaModule` is a type of data that can be uploaded to the Firestore database.
enum PrismaModule {
    /// The questionnaire type with the `String` id.
    case questionnaire(String)
    /// The health type with the `HKQuantityTypeIdentifier` as a String.
    case health(String)
    /// The notification type with the timestamp as a `String`.
    case notifications(String)
    
    /// The `String` description of the module.
    var description: String {
        switch self {
        case .questionnaire:
            return "questionnaire"
        case .health:
            return "health"
        case .notifications:
            return "notifications"
        }
    }
}
