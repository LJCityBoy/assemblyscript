const path = require("path");
const fs = require("fs");
const pkg = require("../package.json");

fs.readFile(path.join(__dirname, "..", "lib", "sdk", "index.js"), "utf8", function(err, data) {
  if (err) throw err;
  data = data
    .replace(/BINARYEN_VERSION = "nightly"/, "BINARYEN_VERSION = " + JSON.stringify(pkg.dependencies.binaryen))
    .replace(/ASSEMBLYSCRIPT_VERSION = "nightly"/, "ASSEMBLYSCRIPT_VERSION = " + JSON.stringify(pkg.version));
  fs.writeFile(path.join(__dirname, "..", "dist", "sdk.js"), data, function(err) {
    if (err) throw err;
  });
});
