#!/usr/bin/env bash
#
# install_openapi_generator.sh
# Copyright (C) 2023 Toran Sahu <toran.sahu@yahoo.com>
#
# Distributed under terms of the MIT license.
#


mkdir -p ~/bin/openapitools
curl https://raw.githubusercontent.com/OpenAPITools/openapi-generator/master/bin/utils/openapi-generator-cli.sh > ~/bin/openapitools/openapi-generator-cli
chmod u+x ~/bin/openapitools/openapi-generator-cli
export PATH=$PATH:~/bin/openapitools/
