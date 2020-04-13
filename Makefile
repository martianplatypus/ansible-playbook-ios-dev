.PHONY: \
	install \
	install_galaxy_roles \
	install_homebrew \
	install_ruby \
	install_cocoapods

install: \
	install_galaxy_roles \
	install_homebrew \
	install_ruby \
	install_cocoapods

install_galaxy_roles:
	ansible-galaxy install -r requirements.yml

install_homebrew:
	ansible-playbook playbook.yml -i inventory --tags "homebrew"

install_ruby:
	ansible-playbook playbook.yml -i inventory --tags "ruby" --extra-vars "ci_running=true"

install_cocoapods:
	ansible-playbook playbook.yml -i inventory --tags "cocoapods"

clean:
	ansible-galaxy remove geerlingguy.homebrew
	ansible-galaxy remove martianplatypus.ruby_mac
