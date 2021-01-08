import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';

import Root from './components/root';

document.addEventListener('DOMContentLoaded', () => {
  const preloadedState = localStorage.state ?
    JSON.parse(localStorage.state) : {};
  const store = configureStore(preloadedState);

  const root = document.getElementById('content');
  ReactDOM.render(<Root store={store} />, root);
});
//phase 1
// const addLoggingToDispath= (store) => {
//   const origDispatch = store.dispatch();
//   return function (action) {
//     console.log(store.getState());
//     console.log(action);
//     origDispatch(action);
//     console.log(store.getState());
//   }
// }


// phase 2
// function addLoggingToDispatch(store) {
//   return function (next) {
//     return function (action) {
//       console.log(store.getState());
//       consolte.log(action);
//       next(action);
//       console.log(store.getState());
//     };
//   };
// };


// const applyMiddlewares = (store,...middleware) => {
//   let dispatch = store.dispatch;
//   applyMiddlewares.forEach((middleware) => {
//     dispatch = middleware(store)(dispatch);
//   });
//   return Object.assign({},store,{dispatch});

// };