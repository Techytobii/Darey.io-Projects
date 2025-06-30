const request = require('supertest');
const app = require('./app');

// introduction-to-ci-cd/index.test.js

describe('App', () => {
  it('GET / should respond with CI/CD is awesome!', async () => {
    const res = await request(app).get('/');
    expect(res.statusCode).toBe(200);
    expect(res.text).toBe('CI/CD is awesome!');
  });
});