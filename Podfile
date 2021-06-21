platform :ios, "14.0"

use_frameworks!
inhibit_all_warnings!

workspace 'R-Example.xcworkspace'

pod 'R.swift', '5.4.0'

target "R-Example" do
  project 'R-Example.xcodeproj'
end

target "Medical" do
  project 'R-Example/Modules/Medical/Medical.xcodeproj'
  
  target :MedicalTests
end

target "Education" do
  project 'R-Example/Modules/Education/Education.xcodeproj'
  
  target :EducationTests
end
