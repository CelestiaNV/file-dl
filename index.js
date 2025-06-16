const fs = require('fs');
const express = require('express');
const path = require('path');
const app = express();

// Download file from /file
app.get('/:filename', (req, res, next) => {
  // ป้องกันทับ route /ls หรือ /
  if (req.params.filename === 'ls') return next();
  const filename = req.params.filename;
  const filePath = path.join(__dirname, 'assets', filename);

  fs.access(filePath, fs.constants.F_OK, (err) => {
    if (err) {
      res.status(404).send('File not found');
      return;
    }
    res.download(filePath, filename, (err) => {
      if (err) {
        res.status(500).send('Error downloading file');
      }
    });
  });
});

// List all files in the assets folder
app.get('/ls', (req, res) => {
  const assetsDir = path.join(__dirname, 'assets');
  fs.readdir(assetsDir, (err, files) => {
    if (err) {
      res.status(500).send('Unable to list files');
      return;
    }
    res.json(files);
  });
});

// Default root
app.get('/', (req, res) => {
  res.send("Hello, World! Please enter the correct file name in the url");
});

// Export handler for Vercel
module.exports = app;
