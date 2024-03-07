const express = require("express");
const app = express();

app.get("/", (req, res) => {
  res.send({ msg: "cool" }).status(200);
});

app.listen(3000, () => {
  console.log("Server successfully run");
});
