const goodReducer = (state = { count: 0 }, action) => {
  Object.freeze(state);
  switch (action.type) {
    case "INCREMENT_COUNTER":
      let nextState = Object.assign({}, state);
      nextState.count++;
      return nextState;
    default:
      return state;
  }
};