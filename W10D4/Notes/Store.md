Store is a central element of Redux arch. that holds app state wrapped in minimal API
    - holds global state of an application.
    - responsible for :
        - updating an app's state via *reducer*
        - broadcasting state to an appliation's view via *subscription*
        - listening for *actions* that tell it how and when to change global state

Creating the Store
    -redux library provudes us with a createStore() method which takes up to three arguments and returns a Redux store.

 ``` create Store(reducer, [preloadedState], [enhancer]);```

        - *reducer* (required): a reducing function that receives the app's current state and incoming actions, determines how to update the state, and returns next state

        - *preLoadedState* (optional): an object representing any application state that existed before the store was created.

        - enhancer (optional): a function that adds extra functionality to the store

example:
// store.js
import { createStore } from `redux`;
import reducer from './reducer.js';

const store = createStore(reducer);


============================================================
Store Methods
    -getState() : returns the store's current state
    -dispatch(acion) : passes an action into store's reducer
    -subscribe(callback) : registers callbacks to be triggered whenever the store updates


============================================================

Updating the Store

can only be updated through dispatching actions:

```store.dispatch(action;)```

an action in Redux is just a plain object with a type ket indicating the action, and an optional payload keys containing new info.


example:
// actions.js
const addOrange = {
  type: "ADD_FRUIT",
  fruit: "orange"
};



