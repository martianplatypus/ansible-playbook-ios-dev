.PHONY: \
	install \
	install_galaxy_roles \
	install_homebrew \

install: \
	install_galaxy_roles \
	install_homebrew

install_galaxy_roles:
	ansible-galaxy install -r requirements.yml

install_homebrew:
	ansible-playbook playbook.yml -i inventory --tags "homebrew"

clean:
	ansible-galaxy remove geerlingguy.homebrew
