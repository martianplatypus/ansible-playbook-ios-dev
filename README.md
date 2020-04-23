ios-dev-playbook
-----------------
[![Build Status][badge-travis]][link-travis]
[![MIT Licensed][badge-license]][link-license]

This playbook will provision your Mac for iOS and  Mac development. It installs everything you need to start coding in Swift or Objective-C: Xcode, swiftlint, cocoapods, and more.

Getting started
---------------

1. Clone the repository
```
git clone https://github.com/martianplatypus/ansible-playbook-ios-dev.git
```
2. run make install
```
make install
```

**Note:** This playbook will only download and install the latest version of Xcode available in the App Store. In case your computer is running a MacOS version that is below the minimum required in store or if you need to install multiple versions, your only option is to download Xcode from https://developer.apple.com/download/more/?q=xcode


Requirements
------------
- MacOS High Sierra or Above
- Command Line Tools
- Ansible
- Homebrew

You can easily install CLT, Ansible and Hombrew using this [playbook][link-bootstrap].

Dependencies
------------

The following Ansible roles were used in this playbook:
- [geerlingguy.homebrew][link-geerlingguy-homebrew]
- [geerlingguy.mas][link-geerlingguy-mas]
- [martianplatypus.ruby_mac][link-martianplatypus-ruby_mac]


[badge-license]: https://img.shields.io/github/license/martianplatypus/ansible-playbook-ios-dev
[badge-travis]: https://img.shields.io/travis/com/martianplatypus/ansible-playbook-ios-dev
[link-license]: https://github.com/martianplatypus/ansible-playbook-ios-dev/blob/master/LICENSE
[link-travis]: https://travis-ci.com/github/martianplatypus/ansible-playbook-ios-dev/
[link-bootstrap]: https://github.com/martianplatypus/ansible-playbook-bootstrap/
[link-mas-cli]: https://github.com/mas-cli/mas
[link-geerlingguy-homebrew]: https://galaxy.ansible.com/geerlingguy/homebrew
[link-geerlingguy-mas]: https://galaxy.ansible.com/geerlingguy/mas
[link-martianplatypus-ruby_mac]: https://galaxy.ansible.com/martianplatypus/ruby_mac
