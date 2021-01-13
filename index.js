const express = require('express')
const app = express();

var port = process.env.PORT || 3000

// Handle different data formats passed to api
app.use(express.urlencoded({ extended: true }))
app.use(express.json())

app.get('/', function (req, res) {
    res.send('Welcome');
})


app.listen(port, (err) => {
    if (err) throw err
    console.log('Server is running on port ' + port);
})


// Export express app to other scipts
module.exports = app 