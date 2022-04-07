@app
enhance-dev

@static
fingerprint true
folder public

@http
get /
get /docs
get /waitlist 
post /email/interest/add
get /email/thank
get /playground
post /playground
post /repl

get /testtag

@events
repl-secure-sandbox


@plugins
arc-plugin-oauth
plugin-importmap

@importmap
api './src/module/data/api.mjs'
worker './src/module/data/worker.mjs'
store './node_modules/@enhance/store/index.mjs'
codemirror 'src/module/codemirror6.mjs' 
enhance  './node_modules/@enhance/ssr/index.mjs'
prism './node_modules/prismjs/prism.js'
beautify './node_modules/js-beautify/js/index.js'

@oauth
use-mock true 
allow-list allow.mjs 
un-auth-redirect /waitlist

@tables
repl
  seshId *String
data
  scopeID *String
  dataID **String
  ttl TTL

@aws
runtime nodejs14.x
region us-west-2
profile smallwins