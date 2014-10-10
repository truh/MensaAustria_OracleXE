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
