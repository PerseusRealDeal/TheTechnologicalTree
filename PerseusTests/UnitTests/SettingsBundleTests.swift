//
//  SettingsBundleTests.swift
//  PerseusTests
//
//  Created by Mikhail A. Zhigulin of Novosibirsk.
//
//  Unlicensed Free Software.
//
//  Before start unit tests, make sure that previous app's installation is removed.
//

import XCTest
@testable import Perseus

class SettingsBundleTests: XCTestCase {

    private let defaults = AppGlobals.userDefaults

    override class func setUp() {
        super.setUp()

        log.message("[\(type(of: self))].\(#function)")

        UserPreferences.setVersionNumber()
        UserPreferences.setBuildNumber()

        UserPreferences.registerSettingsBundle(with: Settings.bundleParams)
    }

    override class func tearDown() {
        log.message("[\(type(of: self))].\(#function)")
        super.tearDown()
    }

    // func test_zero() { XCTFail("Tests not yet implemented in \(type(of: self)).") }
    // func test_the_first_success() { XCTAssertTrue(true, "It's done!") }

    // MARK: - Dark Mode Option in Settings bundle

    func test_Dark_Mode_default_value() {

        let expected = "0"
        let actual = DARK_MODE_SETTINGS_KEY.defaultValueFromSettings

        let tell_not_equal = "Dark Mode default value doesn't meet requirement!"

        XCTAssertEqual(expected, actual, tell_not_equal)
    }

    func test_Dark_Mode_Values() {

        let expected = ["2", "1", "0"]
        let actual = DARK_MODE_SETTINGS_KEY.valuesFromSettings

        let tell_not_equal = "Dark Mode value doesn't meet requirement!"

        XCTAssertEqual(expected, actual, tell_not_equal)
    }

    // MARK: - Release Number in Settings bundle

    func test_build_number_meets_app_build_number() {

        let expected = Bundle.main.object(forInfoDictionaryKey: "CFBundleVersion") as? String
        let actual = defaults.string(forKey: Settings.BuildPreferenceKey)

        let tell_not_equal = "Build number doesn't meet requirement!"

        XCTAssertEqual(expected, actual, tell_not_equal)
    }

    func test_build_number_default_value() {

        let expected = "~"
        let actual = Settings.BuildPreferenceKey.defaultValueFromSettings

        let tell_not_equal = "Build number default value doesn't meet requirement!"

        XCTAssertEqual(expected, actual, tell_not_equal)
    }

    func test_version_value_meets_app_version() {

        let expected =
            Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String
        let actual = defaults.string(forKey: Settings.VersionPreferenceKey)

        let tell_not_equal = "Version value doesn't meet requirement!"

        XCTAssertEqual(expected, actual, tell_not_equal)
    }

    func test_version_default_value() {

        let expected = "~"
        let actual = Settings.VersionPreferenceKey.defaultValueFromSettings

        let tell_not_equal = "Version default value doesn't meet requirement!"

        XCTAssertEqual(expected, actual, tell_not_equal)
    }
}
