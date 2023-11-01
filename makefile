build:
	@cd packer && \
	 packer init -var-file="variables.pkrvars.hcl" . && \
	 packer build -var-file="variables.pkrvars.hcl" .

install-tools:
	@brew install packer
