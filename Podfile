platform :ios, "14.0"

use_frameworks!
inhibit_all_warnings!

workspace 'R-Example.xcworkspace'

pod 'R.swift', '5.4.0'

target "R-Example" do
  project 'R-Example.xcodeproj'
end

target "Stack" do
  project 'R-Example/Modules/Stack/Stack.xcodeproj'
  
  target :StackTests
end
