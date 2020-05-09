.PHONY: \
	install \
	install_galaxy_roles \
	install_all \
	install_homebrew \
	install_ruby \
	install_fastlane \
	install_rome \
	install_mas \
	install_xcode \
	install_swiftlint \

install: \
	install_galaxy_roles \
	install_all

install_galaxy_roles:
	ansible-galaxy install -r requirements.yml

install_all:
	ansible-playbook playbook.yml -i inventory $(ARGS)

install_homebrew:
	ansible-playbook playbook.yml -i inventory --tags "homebrew" $(ARGS)

install_ruby:
	ansible-playbook playbook.yml -i inventory --tags "ruby" $(ARGS)

install_fastlane:
	ansible-playbook playbook.yml -i inventory --tags "fastlane" $(ARGS)

install_rome:
	ansible-playbook playbook.yml -i inventory --tags "rome" $(ARGS)

install_mas:
	ansible-playbook playbook.yml -i inventory --tags "mas" $(ARGS)

install_xcode:
	ansible-playbook playbook.yml -i inventory --tags "xcode" $(ARGS)

install_swiftlint:
	ansible-playbook playbook.yml -i inventory --tags "swiftlint" $(ARGS)

clean:
	ansible-galaxy remove geerlingguy.homebrew
	ansible-galaxy remove elliotweiser.osx-command-line-tools
	ansible-galaxy remove martianplatypus.ruby_mac
	ansible-galaxy remove geerlingguy.mas
