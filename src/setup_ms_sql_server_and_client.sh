#! /bin/sh
#
# setup_ms_sql_server_and_client.sh
# Copyright (C) 2020 Toran Sahu <toran.sahu@yahoo.com>
#
# Distributed under terms of the MIT license.
#
# Ref: https://docs.microsoft.com/en-us/sql/linux/quickstart-install-connect-ubuntu?view=sql-server-ver15


install_server () {
    wget -qO- https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
    sudo add-apt-repository "$(wget -qO- https://packages.microsoft.com/config/ubuntu/18.04/mssql-server-2019.list)"
    sudo apt-get update
    sudo apt-get install -y mssql-server
}

configure_server () {
    sudo /opt/mssql/bin/mssql-conf setup
}

verify_server_running () {
    systemctl status mssql-server --no-pager
}

allow_port_for_remote_access () {
    sudo ufw allow 1433/tcp
    sudo ufw reload
}

install_cli_client () {
    curl https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
    # NOTE: Ubuntu 18.04
    curl https://packages.microsoft.com/config/ubuntu/18.04/prod.list | sudo tee /etc/apt/sources.list.d/msprod.list

    sudo apt-get update
    sudo apt-get install -y mssql-tools unixodbc-dev
}

optional_add_client_to_bashrc () {
    echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bashrc
    source ~/.bashrc
}
