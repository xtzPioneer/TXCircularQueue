#
# Be sure to run `pod lib lint TXCircularQueue.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  # 组件名称
  s.name             = 'TXCircularQueue'
  # 组件版本
  s.version          = '0.1.0'
  # 组件概要说明
  s.summary          = '为充分利用向量空间，克服"假溢出"现象的方法是：将向量空间想象为一个首尾相接的圆环，并称这种向量为循环向量。存储在其中的队列称为循环队列（Circular Queue）。'
  # 组件详细说明
  s.description      = <<-DESC
  为充分利用向量空间，克服"假溢出"现象的方法是：将向量空间想象为一个首尾相接的圆环，并称这种向量为循环向量。存储在其中的队列称为循环队列（Circular Queue）。这种循环队列可以以OC的方式来在实际编程应用中来实现。
                       DESC
  # 首页地址
  s.homepage         = 'https://github.com/xtzPioneer/TXCircularQueue'
  # 许可
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  # 作者
  s.author           = { 'zhangxiong' => 'xtz_pioneer@163.com' }
  # 资源所在地
  s.source           = { :git => 'https://github.com/xtzPioneer/TXCircularQueue.git', :tag => s.version.to_s }
  # 支持的版本
  s.ios.deployment_target = '8.0'
  # 资源文件
  s.source_files = 'TXCircularQueue/Classes/**/*.{h,m}'
end
