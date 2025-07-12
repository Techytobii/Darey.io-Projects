// eslint.config.js
const js = require("@eslint/js");
const globals = require("globals");

module.exports = [
  js.configs.recommended,
  {
    languageOptions: {
      ecmaVersion: "latest",
      sourceType: "module",
      globals: {
        ...globals.node,
        ...globals.jest
      }
    },
    ignores: [
      "node_modules",
      "coverage",
      ".github"
    ],
    rules: {
      "no-undef": "error"
    }
  }
];
