const express = require('express');
const app = express();

app.get('/', (req, res) => {
  res.send('� Hello from your CI/CD deployed Node.js App!');
});

const PORT = process.env.PORT || 80;
app.listen(PORT, () => {
  console.log(`� App is running on port ${PORT}`);
});
