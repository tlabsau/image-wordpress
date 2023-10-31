build:
	@cd packer && \
	 packer build -var-file="variables.pkrvars.hcl" .

install-tools:
	@brew install packer
