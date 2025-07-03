// eslint.config.js
import js from "@eslint/js";
import globals from "globals";

export default [
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
