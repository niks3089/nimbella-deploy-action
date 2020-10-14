# Nimbella deploy docker action

This action deploys the project onto the nimbella cloud

## Inputs

### `nimbella-token`

**Required** The login token of the namespace to deploy the project to.
It can retrieved by running `nim auth export` and then added to the github repo secrets.

### `deploy-dir`

**Optional** The directory under the repo to deploy. Defaults to `.`

## Example usage

uses: actions/nimbella-deploy-action@v1
with:
  nimbella-token: ${{ secrets.NIMBELLA_LOGIN_TOKEN }}
  deploy-dir: src