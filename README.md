# entap-sapelo2

## Overview

The following are instructions for functional annotation of a proteome using EnTAP on the sapelo2 cluster at UGA. EnTAP requires several dependencies and databases in order to run, and the user needs to tell EnTAP where those are using two configuration files. The GACRC has installed the dependencies and downloaded the databases for us, and this repository contains examples of the config files that point to where GACRC has placed them as well as a submission script for running the program.

## EnTAP config files

There are two EnTAP config files, `entap_config.ini`, which should not require any changes, and `entap_run.ini`. Both files are described [here](https://entap.readthedocs.io/en/latest/Getting_Started/ini_files.html) in detail.

Most of the params in the `entap_run.ini` file can be provided on the command line instead of in this file, for example ``out-dir`` can be provided using the flag ``--outdir`` as is done in the provided submission script ``run_entap.sh``. The important parameters for running EnTAP on sapelo2 are``database``, which contains the paths to two important databases for EnTAP, and ``ncbi-api-enable``, which needs to be set to false since there seems to be an issue with sapelo2 communicating with the NCBI API currently.

## Running EnTAP

1. Copy the three files, ``run_entap.sh``,`entap_config.ini`, and `entap_run.ini` to your working directory.
2. Edit the ``run_entap.sh`` file and provide the locations of your proteome fasta file, the two ini files, and your desired output directory.
3. Consult the EnTAP documentation and/or read through the ``entap_run.ini`` file to determine if there are other parameters you wish to change.
4. Submit the submission script.
