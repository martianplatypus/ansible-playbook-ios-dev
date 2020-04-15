.PHONY: \
	install \
	install_galaxy_roles \
	install_homebrew \
	install_ruby \
	install_fastlane

install: \
	install_galaxy_roles \
	install_homebrew \
	install_ruby \
	install_fastlane

install_galaxy_roles:
	ansible-galaxy install -r requirements.yml

install_homebrew:
	ansible-playbook playbook.yml -i inventory --tags "homebrew"

install_ruby:
	ansible-playbook playbook.yml -i inventory --tags "ruby" --extra-vars "ci_running=true"

install_fastlane:
	ansible-playbook playbook.yml -i inventory --tags "fastlane"
	
clean:
	ansible-galaxy remove geerlingguy.homebrew
	ansible-galaxy remove elliotweiser.osx-command-line-tools
	ansible-galaxy remove martianplatypus.ruby_mac
