/******/ (function(modules) { // webpackBootstrap
/******/ 	// The module cache
/******/ 	var installedModules = {};
/******/
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/
/******/ 		// Check if module is in cache
/******/ 		if(installedModules[moduleId]) {
/******/ 			return installedModules[moduleId].exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = installedModules[moduleId] = {
/******/ 			i: moduleId,
/******/ 			l: false,
/******/ 			exports: {}
/******/ 		};
/******/
/******/ 		// Execute the module function
/******/ 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);
/******/
/******/ 		// Flag the module as loaded
/******/ 		module.l = true;
/******/
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/
/******/
/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = modules;
/******/
/******/ 	// expose the module cache
/******/ 	__webpack_require__.c = installedModules;
/******/
/******/ 	// define getter function for harmony exports
/******/ 	__webpack_require__.d = function(exports, name, getter) {
/******/ 		if(!__webpack_require__.o(exports, name)) {
/******/ 			Object.defineProperty(exports, name, { enumerable: true, get: getter });
/******/ 		}
/******/ 	};
/******/
/******/ 	// define __esModule on exports
/******/ 	__webpack_require__.r = function(exports) {
/******/ 		if(typeof Symbol !== 'undefined' && Symbol.toStringTag) {
/******/ 			Object.defineProperty(exports, Symbol.toStringTag, { value: 'Module' });
/******/ 		}
/******/ 		Object.defineProperty(exports, '__esModule', { value: true });
/******/ 	};
/******/
/******/ 	// create a fake namespace object
/******/ 	// mode & 1: value is a module id, require it
/******/ 	// mode & 2: merge all properties of value into the ns
/******/ 	// mode & 4: return value when already ns object
/******/ 	// mode & 8|1: behave like require
/******/ 	__webpack_require__.t = function(value, mode) {
/******/ 		if(mode & 1) value = __webpack_require__(value);
/******/ 		if(mode & 8) return value;
/******/ 		if((mode & 4) && typeof value === 'object' && value && value.__esModule) return value;
/******/ 		var ns = Object.create(null);
/******/ 		__webpack_require__.r(ns);
/******/ 		Object.defineProperty(ns, 'default', { enumerable: true, value: value });
/******/ 		if(mode & 2 && typeof value != 'string') for(var key in value) __webpack_require__.d(ns, key, function(key) { return value[key]; }.bind(null, key));
/******/ 		return ns;
/******/ 	};
/******/
/******/ 	// getDefaultExport function for compatibility with non-harmony modules
/******/ 	__webpack_require__.n = function(module) {
/******/ 		var getter = module && module.__esModule ?
/******/ 			function getDefault() { return module['default']; } :
/******/ 			function getModuleExports() { return module; };
/******/ 		__webpack_require__.d(getter, 'a', getter);
/******/ 		return getter;
/******/ 	};
/******/
/******/ 	// Object.prototype.hasOwnProperty.call
/******/ 	__webpack_require__.o = function(object, property) { return Object.prototype.hasOwnProperty.call(object, property); };
/******/
/******/ 	// __webpack_public_path__
/******/ 	__webpack_require__.p = "/packs/";
/******/
/******/
/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(__webpack_require__.s = "./app/javascript/packs/hello_erb.js.erb");
/******/ })
/************************************************************************/
/******/ ({

/***/ "./app/javascript/packs/hello_erb.js.erb":
/*!***********************************************!*\
  !*** ./app/javascript/packs/hello_erb.js.erb ***!
  \***********************************************/
/*! no static exports found */
/***/ (function(module, exports) {

throw new Error("Module build failed (from ./node_modules/babel-loader/lib/index.js):\nSyntaxError: /Users/niko/Desktop/Microverse/roar/ror-capstone/app/javascript/packs/hello_erb.js.erb: Unexpected token (4:0)\n\n  2 | // like app/views/layouts/application.html.erb. Don't forget to uncomment erb tag after adding it to your layout file.\n  3 |\n> 4 | <% name = 'Erb' %>\n    | ^\n  5 |\n  6 | console.log('Hello world from <%= name %>')\n  7 |\n    at Parser._raise (/Users/niko/Desktop/Microverse/roar/ror-capstone/node_modules/@babel/parser/lib/index.js:816:17)\n    at Parser.raiseWithData (/Users/niko/Desktop/Microverse/roar/ror-capstone/node_modules/@babel/parser/lib/index.js:809:17)\n    at Parser.raise (/Users/niko/Desktop/Microverse/roar/ror-capstone/node_modules/@babel/parser/lib/index.js:770:17)\n    at Parser.unexpected (/Users/niko/Desktop/Microverse/roar/ror-capstone/node_modules/@babel/parser/lib/index.js:9896:16)\n    at Parser.parseExprAtom (/Users/niko/Desktop/Microverse/roar/ror-capstone/node_modules/@babel/parser/lib/index.js:11297:20)\n    at Parser.parseExprSubscripts (/Users/niko/Desktop/Microverse/roar/ror-capstone/node_modules/@babel/parser/lib/index.js:10869:23)\n    at Parser.parseUpdate (/Users/niko/Desktop/Microverse/roar/ror-capstone/node_modules/@babel/parser/lib/index.js:10849:21)\n    at Parser.parseMaybeUnary (/Users/niko/Desktop/Microverse/roar/ror-capstone/node_modules/@babel/parser/lib/index.js:10827:23)\n    at Parser.parseExprOps (/Users/niko/Desktop/Microverse/roar/ror-capstone/node_modules/@babel/parser/lib/index.js:10684:23)\n    at Parser.parseMaybeConditional (/Users/niko/Desktop/Microverse/roar/ror-capstone/node_modules/@babel/parser/lib/index.js:10658:23)\n    at Parser.parseMaybeAssign (/Users/niko/Desktop/Microverse/roar/ror-capstone/node_modules/@babel/parser/lib/index.js:10621:21)\n    at Parser.parseExpressionBase (/Users/niko/Desktop/Microverse/roar/ror-capstone/node_modules/@babel/parser/lib/index.js:10567:23)\n    at /Users/niko/Desktop/Microverse/roar/ror-capstone/node_modules/@babel/parser/lib/index.js:10561:39\n    at Parser.allowInAnd (/Users/niko/Desktop/Microverse/roar/ror-capstone/node_modules/@babel/parser/lib/index.js:12330:16)\n    at Parser.parseExpression (/Users/niko/Desktop/Microverse/roar/ror-capstone/node_modules/@babel/parser/lib/index.js:10561:17)\n    at Parser.parseStatementContent (/Users/niko/Desktop/Microverse/roar/ror-capstone/node_modules/@babel/parser/lib/index.js:12667:23)\n    at Parser.parseStatement (/Users/niko/Desktop/Microverse/roar/ror-capstone/node_modules/@babel/parser/lib/index.js:12536:17)\n    at Parser.parseBlockOrModuleBlockBody (/Users/niko/Desktop/Microverse/roar/ror-capstone/node_modules/@babel/parser/lib/index.js:13125:25)\n    at Parser.parseBlockBody (/Users/niko/Desktop/Microverse/roar/ror-capstone/node_modules/@babel/parser/lib/index.js:13116:10)\n    at Parser.parseProgram (/Users/niko/Desktop/Microverse/roar/ror-capstone/node_modules/@babel/parser/lib/index.js:12459:10)\n    at Parser.parseTopLevel (/Users/niko/Desktop/Microverse/roar/ror-capstone/node_modules/@babel/parser/lib/index.js:12450:25)\n    at Parser.parse (/Users/niko/Desktop/Microverse/roar/ror-capstone/node_modules/@babel/parser/lib/index.js:14177:10)\n    at parse (/Users/niko/Desktop/Microverse/roar/ror-capstone/node_modules/@babel/parser/lib/index.js:14229:38)\n    at parser (/Users/niko/Desktop/Microverse/roar/ror-capstone/node_modules/@babel/core/lib/parser/index.js:52:34)\n    at parser.next (<anonymous>)\n    at normalizeFile (/Users/niko/Desktop/Microverse/roar/ror-capstone/node_modules/@babel/core/lib/transformation/normalize-file.js:82:38)\n    at normalizeFile.next (<anonymous>)\n    at run (/Users/niko/Desktop/Microverse/roar/ror-capstone/node_modules/@babel/core/lib/transformation/index.js:29:50)\n    at run.next (<anonymous>)\n    at Function.transform (/Users/niko/Desktop/Microverse/roar/ror-capstone/node_modules/@babel/core/lib/transform.js:25:41)");

/***/ })

/******/ });
//# sourceMappingURL=hello_erb-e7d8f7d1f2676bf2f9c7.js.map