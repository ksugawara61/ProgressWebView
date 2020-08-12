#
#  Be sure to run `pod spec lint ProgressWebView.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|
  spec.name         = 'ProgressWebView'
  spec.version      = '0.0.2'
  spec.summary      = 'WebView with ProgressBar.'
  spec.description  = <<-DESC
                    WebView with ProgressBar for SwiftUI.
                    DESC
  spec.homepage     = 'https://github.com/ksugawara61/ProgressWebView'
  spec.license      = { type: 'MIT', file: 'LICENSE' }
  spec.author       = 'katsuya.sugawara'
  spec.platform     = :ios, '13.0'
  spec.swift_version  = '5.0'
  spec.source       = { git: 'https://github.com/ksugawara61/ProgressWebView.git', tag: "#{spec.version}" }
  spec.source_files = 'ProgressWebView', 'ProgressWebView/**/*.swift'
end
