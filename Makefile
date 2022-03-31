scen ?= default

.PHONY: $(mol) inventory run dry-run galaxy-install

# molecule
mol = create converge verify destroy test
$(mol):
	molecule $@ -s $(scen)

# playbook
# inventory:
# 	ansible-inventory --graph -i $(inv)
#
# run:
# 	ansible-playbook "$(playbook).yml" -K
#
# dry-run:
# 	ansible-playbook --check "$(playbook).yml" -K

# galaxy
galaxy-install:
	ansible-galaxy install -f -r requirements.yml

