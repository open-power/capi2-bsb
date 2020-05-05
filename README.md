# CAPI2-BSP (CAPI version 2.0 board support)
## What is CAPI 2.0?
The majority of computational accelerator systems use PCI Express (PCIe) to connect to the main processor
units via the I/O subsystem. The IBM **C**oherent **A**ccelerator **P**rocessor **I**nterface (CAPI) provides an alternative
that removes the complexity and overhead of the I/O subsystem to enable higher system performance.

While the first version of CAPI was designed for acceleration in a POWER8 system, its successor CAPI 2.0 is the CAPI version for acceleration through the PCIe link on POWER9 systems.

For more information about CAPI, see https://developer.ibm.com/linuxonpower/capi

## Board support and PSL
The Power Service Layer (PSL) is the component for FPGAs that provides access to CAPI.

This repository contains the necessary resources for creating a Xilinx Vivado IP container that integrates the PSL component into an FPGA card specific infrastructure for CAPI 2.0.

Currently, support for the following cards is implemented:
* [AD9V3](./AD9V3)   (AlphaData 9V3)
* [AD9H3](./AD9H3)   (AlphaData 9H3)
* [AD9H7](./AD9H7)   (AlphaData 9H7)
* [N250SP](./N250SP) (Nallatech 250S+)
* [RCXVUP](./RCXVUP) (ReflexCES XpressVUP-LP9PT)
* [FX609](./FX609)   (Flyslice FX609QL)
* [S241](./S241)     (Semptian NSA241)
* [U50](./U50)       (Xilinx U50 still in development)
* [U200](./U200)     (Xilinx U200 still in development)

The build process for the CAPI 2.0 board support depends on POWER9 PSL (PSL9) sources that can be obtained as zip archive from the IBM Portal for OpenPOWER

https://www.ibm.com/systems/power/openpower

From the menu, select "CAPI"->"Coherent Accelerator Processor Interface (CAPI)" or directly click the "CAPI" icon to go to the CAPI section
and download the required zip archive contained in "**PSL IP Source Files for POWER9 CAPI**".  
Alternatively, the following link will provide direct access:

https://www-355.ibm.com/systems/power/openpower/posting.xhtml?postingId=1BED44BCA884D845852582B70076A89A 

Please copy the downloaded zip file to the subdirectory [psl](./psl).

## Creating container via make process
With the archived PSL9 IP core available in the subdirectory [psl](./psl) the CAPI board support IP container for a supported card with name `<CARD NAME>` can simply be generated by calling
```
make <CARD NAME>
```
This will automatically create the required PSL9 IP for the card's FPGA chip which will be included in the resulting CAPI
board support IP container
```
<CARD NAME>/build/ip/capi_bsp_wrap.xcix
```

## Adding new cards
In order to add a new card `<NEW CARD>` a new subdirectory has to be created that contains
* a `Makefile` for setting up the card specific environment variables
  (see [AD9V3/Makefile](./AD9V3/Makefile) for an example)
* a subdirectory `src` keeping the capi board support sources
* a subdirectory `tcl` containing at least the following files
  - `add_ip.tcl` to add card specific IP to the `card_board_support` project
  - `add_src.tcl` to add card specific files not contained in `<NEW CARD>/src`
  - `create_ip.tcl` to create the required card specific IP
  - optionally a script `patch_ip.tcl` to apply additional patches
* a subdirectory `xdc` containing card specific constraint files

For examples, please refer to [AD9V3](./AD9V3) or [N250SP](./N250SP).

After creation of the directories and files as described above,
the new card can be enabled by just adding the card to the variable `CARDS`
in the top level [Makefile](./Makefile).

## PSL9 IP
When creating a CAPI 2.0 board support IP container, the required PSL9 IP will be generated
automatically from the archived PSL9 IP core (see [Board support and PSL](#board-support-and-psl)
for information on how to obtain that archived IP core).
It is not even necessary to take care of that in the card specific `create_ip.tcl`.

The build scripts for PSL9 IP generation are
contained in the subdirectory [psl](./psl).
In that directory the build process also expects to find the archived PSL9 IP core
* `ibm.com_CAPI_PSL9_WRAP_$(PSL_VERSION).zip`

where `PSL_VERSION` is an environment variable used by the build process to identify the PSL version.
If that variable is not defined, the default value `2.00` will be assumed, currently.

While it is not *necessary* to explicitly build the PSL9 IP for a card, calling
```
make -C <CARD_NAME> psl
```
will build the PSL9 IP for the FPGA part that belongs to the card with name `<CARD_NAME>`.

## Contributing
This is an open-source project. We greatly appreciate your contributions and collaboration. 
Before contributing to this project, please read and agree to the rules in
* [CONTRIBUTING.md](CONTRIBUTING.md)

To simplify the sign-off, you may want to create a ".gitconfig" file in you home by executing:
```
$ git config --global user.name "John Doe"
$ git config --global user.email johndoe@example.com
```
Then, for every commit, use `git commit -s` to add the "Signed-off by ..." message.

By default the git repository is read-only. Users can fork the snap repository, make the changes there and issue a pull request.
Even members with write access to this repository can't commit directly into the protected master branch. To contribute changes, please create a branch, make the changes there and issue a pull request.

Pull requests to merge into the master branch must be reviewed before they will be merged.
