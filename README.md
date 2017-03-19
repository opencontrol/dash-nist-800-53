# NIST 800-53 (Revision 4) Docset for Dash

This repository contains the code and files to format the [NIST 800-53 (Revision 4)](https://beta.nvd.nist.gov/800-53/Rev4) security control documentation for [Dash](https://kapeli.com/dash). To generate:

1. Install dependencies.
    * [Dashing](https://github.com/technosophos/dashing)
    * [HTTrack](http://www.httrack.com/html/index.html)
1. Get the latest version of the documentation.

    ```sh
    ./download.sh
    ```

1. Generate the docset.

    ```sh
    cd src
    dashing build
    ```

1. Open the docset in Dash.
    1. Open `Dash` menu in the menubar
    1. Click `Preferences...`
    1. Click `Docsets`
    1. Click the `+` icon
    1. Click `Add Local Docset`
    1. Navigate to `src/nist-800-53-r4.docset`
    1. Click `Open`
