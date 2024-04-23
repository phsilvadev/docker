const express = require("express");
const app = express();
const port = 8888;

app.get("/", (req, res) => {
  res.send("wwww");
});

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`);
});
