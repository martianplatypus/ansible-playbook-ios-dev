.PHONY: \
	install \
	install_galaxy_roles \
	install_homebrew \
	install_ruby \
	install_cocoapods \
	install_swiftlint

install: \
	install_galaxy_roles \
	install_homebrew \
	install_ruby \
	install_cocoapods \
	install_swiftlint

install_galaxy_roles:
	ansible-galaxy install -r requirements.yml

install_homebrew:
	ansible-playbook playbook.yml -i inventory --tags "homebrew"

install_ruby:
	ansible-playbook playbook.yml -i inventory --tags "ruby" --extra-vars "ci_running=true"

install_cocoapods:
	ansible-playbook playbook.yml -i inventory --tags "cocoapods"

install_swiftlint:
	ansible-playbook playbook.yml -i inventory --tags "swiftlint"

clean:
	ansible-galaxy remove geerlingguy.homebrew
	ansible-galaxy remove martianplatypus.ruby_mac
