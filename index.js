const express = require('express');
const app = express();
const port = process.env.PORT || 3000;

// Define the home route
app.get('/', (req, res) => {
  res.send('Hello World!');
});

// Start the server
app.listen(port, () => {
  console.log(`Server listening on http://localhost:${port}`);
});
