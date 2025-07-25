# <App's Name> — Xcode 14.2+

> This is the custom project template for a great iOS app.

[![Actions Status](https://github.com/perseusrealdeal/thetechnologicaltree/actions/workflows/main.yml/badge.svg)](https://github.com/perseusrealdeal/thetechnologicaltree/actions/workflows/main.yml)
[![Style](https://github.com/perseusrealdeal/thetechnologicaltree/actions/workflows/swiftlint.yml/badge.svg)](https://github.com/perseusrealdeal/thetechnologicaltree/actions/workflows/swiftlint.yml)
![Version](https://img.shields.io/badge/Version-0.0.1-green.svg)
[![Platforms](https://img.shields.io/badge/Platform-iOS%2012.4+-orange.svg)](https://en.wikipedia.org/wiki/IOS_12)
[![Xcode](https://img.shields.io/badge/Xcode-14.2+-red.svg)](https://en.wikipedia.org/wiki/Xcode)
[![Swift](https://img.shields.io/badge/Swift-5-orange.svg)](https://docs.swift.org/swift-book/RevisionHistory/RevisionHistory.html)
[![SDK](https://img.shields.io/badge/SDK-UIKit%20-blueviolet.svg)](https://developer.apple.com/documentation/uikit)
[![License](http://img.shields.io/:License-Unlicense-green.svg)](/LICENSE)

## Dependencies

> Swift Package Manager.

[![ConsolePerseusLogger](http://img.shields.io/:ConsolePerseusLogger-1.5.1-green.svg)](https://github.com/perseusrealdeal/ConsolePerseusLogger.git)
[![PerseusDarkMode](http://img.shields.io/:PerseusDarkMode-2.0.4-green.svg)](https://github.com/perseusrealdeal/PerseusDarkMode.git)

> May be interesting to add: 

[![PerseusGeoKit](http://img.shields.io/:PerseusGeoKit-1.0.4-green.svg)](https://github.com/perseusrealdeal/PerseusGeoKit.git)

# In brief > Idea to use, the Why

> Initial point of development process.

> [!IMPORTANT]
> Preview Material.

## Approbation Matrix

> [`A3 Environment and Approbation`](/APPROBATION.md). [`CHANGELOG`](/CHANGELOG.md) for details.

## Build system requirements

- [macOS Monterey 12.7.6+](https://apps.apple.com/by/app/macos-monterey/id1576738294) / [Xcode 14.2+](https://developer.apple.com/services-account/download?path=/Developer_Tools/Xcode_14.2/Xcode_14.2.xip)

## Templated Software Requirements

- [`Functional Specification`](/REQUIREMENTS.md)
- Translations [EN](/T3Project/Configuration/Translations/Translation_en.plist), [RU](/T3Project/Configuration/Translations/Translation_ru.plist)

# Gifts

| Type  | Name                                                                                        | License                            |
| ----- | ------------------------------------------------------------------------------------------- | ---------------------------------- |
| Class | [LogReport.swift](https://gist.github.com/PerseusRealDeal/9a4118301b59d43969d8edf5ebc3a571) | [Unlicense](https://unlicense.org) |

# First-party software

| Type    | Name                                                                                                                                                                  | License |
| ------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------- |
| Package | [ConsolePerseusLogger](https://github.com/perseusrealdeal/ConsolePerseusLogger) / [1.5.1](https://github.com/perseusrealdeal/ConsolePerseusLogger/releases/tag/1.5.1) | MIT     |
| Package | [PerseusDarkMode](https://github.com/perseusrealdeal/PerseusDarkMode) / [2.0.4](https://github.com/perseusrealdeal/PerseusDarkMode/releases/tag/2.0.3)                | MIT     |

# Third-party software

| Type   | Name                                                                                                                              | License                            |
| ------ | --------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------- |
| Style  | [SwiftLint](https://github.com/realm/SwiftLint) / [v0.57.0 for Monterey+](https://github.com/realm/SwiftLint/releases/tag/0.57.0) | MIT                                |
| Action | [mxcl/xcodebuild@v3](https://github.com/mxcl/xcodebuild)                                                                          | [Unlicense](https://unlicense.org) |
| Action | [cirruslabs/swiftlint-action@v1](https://github.com/cirruslabs/swiftlint-action/)                                                 | MIT                                |

# Points taken into account

- Explicit start point placed in [main.swift](/T3Project/main.swift)
- Explicit app delegate [TestingAppDelegate.swift](/PerseusTests/TestingAppDelegate.swift) with test bundle
- Explicit app globals placed in [AppGlobals.swift](/T3Project/Configuration/AppGlobals.swift)
- Localization based on Localizable.strings approach
- [Test Plan](/PerseusTests/TestPlanStarted.xctestplan) configured for EN and RU as well
- [Changelog Template](/CHANGELOG.md)
- [A3 Environment Specification Template](/APPROBATION.md)
- [Software Requirements Template](/REQUIREMENTS.md)
- [GitHub CI build & test](/main.yml)
- [GitHub CI SwiftLint](/swiftlint.yml)
- [SwiftLint Rules](/.swiftlint.yml)
- [Git Config](/.gitignore)
- [CPL Config](/T3Project/Configuration/CPLConfig.json)

# Unlicensed Free Software

- [License](/LICENSE)

## Required License Notices

© Mikhail A. Zhigulin of Novosibirsk **for** ConsolePerseusLogger, PerseusDarkMode, PerseusGeoKit</br>
© PerseusRealDeal **for** ConsolePerseusLogger, PerseusDarkMode, PerseusGeoKit</br>
© 2025 The SwiftLint Contributors **for** SwiftLint</br>
© GitHub **for** GitHub Action cirruslabs/swiftlint-action@v1</br>

# Credits

<table>
<tr>
    <td>Balance and Control</td>
    <td>kept by</td>
    <td>Persons</td>
</tr>
<tr>
    <td>Source Code</td>
    <td>written by</td>
    <td>Persons</td>
</tr>
<tr>
    <td>Documentation</td>
    <td>prepared by</td>
    <td>Persons</td>
</tr>
<tr>
    <td>Product Approbation</td>
    <td>tested by</td>
    <td>Persons</td>
</tr>
</table>

# Editors, prepared by

> © Mikhail A. Zhigulin of Novosibirsk

