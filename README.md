# web-shell
Microfrontends shell with Piral


## Build
```bash
$ piral build
```

## Debug
```bash
$ piral debug
```

## Note
The url in code should be replaced to real pilet service. 
Currently, we use local 'sample-pilet-service' for developing.
```typescript
const feedUrl = 'http://localhost:9000/api/v1/pilet';
```

**To install 'sample-pilet-service'**
```bash
$ npm install sample-pilet-service -g
```

**Launch 'sample-pilet-service'**
```bash
$ sample-pilet-service
```
