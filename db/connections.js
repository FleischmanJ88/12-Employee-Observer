const mysql = require('mysql2/promise');


async function setup() {
    const connection = await mysql.createConnection({
        host: "localhost",
        user: "root",
        database: "employees_db",
        password: "Market88**",
    });

    return connection;
}

module.exports = setup()
