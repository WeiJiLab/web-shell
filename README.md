# web-shell
Microfrontends shell with Piral

## Environment Preparing

### Install node and node-sass
```bash
$ brew install node@14 node-sass
```
\* *For now, the node should install version 14 or earlier since the laste sass does not support the version 15 of node.*

### Install Piral CLI
```bash
$ npm i piral-cli -g
```

## Build
```bash
$ piral build
```

## Debug
### Step 1. Launch Sample Pilet Service (optional)
\* *you can skip this step if you need not sub sites*

The url in code should be replaced to real pilet service if you want to use remote pilet service.  

Currently, we use local 'sample-pilet-service' for developing.

```typescript
const feedUrl = 'http://localhost:9000/api/v1/pilet';
```

* **To install 'sample-pilet-service'**
    ```bash
    $ npm install sample-pilet-service -g
    ```

* **Launch 'sample-pilet-service'**
    ```bash
    $ sample-pilet-service
    ```
### Step 2: Launch as Debug
```bash
$ piral debug
```


## Issues

* If you meet following errors, please install or re-install Xcode Command Line Tool
    ```
    npm ERR! No receipt for 'com.apple.pkg.CLTools_Executables' found at '/'.
    npm ERR! 
    npm ERR! No receipt for 'com.apple.pkg.DeveloperToolsCLILeo' found at '/'.
    npm ERR! 
    npm ERR! No receipt for 'com.apple.pkg.DeveloperToolsCLI' found at '/'.
    npm ERR! 
    npm ERR! gyp: No Xcode or CLT version detected!
    ```
    To install Xcode Command Line Tool
    ```bash
    $ xcode-select --install
    ```
    To re-install Xcode Command Line Tool
    ```bash
    $ sudo rm -rf $(xcode-select -print-path)
    $ xcode-select --install
    ```