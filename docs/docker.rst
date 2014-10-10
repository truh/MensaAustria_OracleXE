Docker
======

.. image:: _static/homepage-docker-logo.png
    :width: 40%

Installation von Docker aud Arch Linux
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code:: bash

    # Paketquellen updaten
    yaourt -Syy

    # Installieren
    yaourt -S docker

    # Überprüfen ob installation funktionier hat
    docker version

OracleXE als Docker Container
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Installation
------------

.. code:: bash

    docker pull wnameless/oracle-xe-11g

Docker Container mit Port-Weiterleitung starten: 

.. code:: bash

    docker pull wnameless/oracle-xe-11gdocker run -d -p 49160:22 -p 49161:1521 wnameless/oracle-xe-11g

Datenbankverbindung mit folgenden Einstellungen:

* hostname: localhost
* port: 49161
* sid: xe
* username: system
* password: oracle

Password for SYS oracle

Login mit SSH 

.. code:: bash

    ssh root@localhost -p 49160

password: admin

[2]

=======
Quellen
=======

.. _1:

[1]  How to install and Configure Docker on Ubuntu 12.04 LTS,
     http://www.linuxfunda.com/2013/10/06/how-to-install-and-configure-docker-on-ubuntu-12-04-lts/
     zuletzt besucht am: 2014-05-05


.. _2:

[2]  docker index: wnameless/oracle-xe-11g
     https://registry.hub.docker.com/u/wnameless/oracle-xe-11g/
     zuletzt besucht am: 2014-10-10
