// connect to the db and return a list of the users & give that to the router
// data access layer - db code with validation
// data pulling in to the cient Not from the router anymore.
const db = require('../data/db-config.js');

module.exports = {
  all, 
  findById,
  update
}

function all() {
  return db('users');
}

function findById(id) { // works with MongoDB also
  return db('users')
    .where({ id })
    .first(); // db side: return the first element
}

function update(id, changes) {
  return db('users')
    .where({ id }) // filter using the id
    .update(changes)
    .then(() => {
      return findById(id); // returns a promise
    });
}
