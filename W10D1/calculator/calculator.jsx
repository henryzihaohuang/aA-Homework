import React from 'react';

export default class Calculator extends React.Component{

  constructor(props){
    super(props);

    this.state = {
      num1: "",
      num2: "",
      result: 0
    };

    //bind functions

    this.handleChange = this.handleChange.bind(this);
    this.doMaths = this.doMaths.bind(this);
    this.resetCalc = this.resetCalc.bind(this);

  }

  
  render(){
    const {handleChange, state, doMaths, resetCalc} = this;

    return(
      <div>
        <input onChange={handleChange} value={state.num1} type="number" name="num1"/>
        <br/><br/>
        <input onChange={handleChange} value={state.num2} type ="number" name="num2"/>
        <br/><br/>
        <button onClick={doMaths}> + </button>
        <button onClick={doMaths}> / </button>
        <button onClick={doMaths}> * </button>
        <button onClick={doMaths}> - </button>
        <br/><br/>
        <h1>{state.result}</h1>
        <br /><br />
        <button onClick={resetCalc}> Clear </button>
      </div>
    );
}


handleChange(e) {
  this.setState({ [e.target.name]: e.target.value});
};


doMaths(e) {
  e.preventDefault();
  if (!this.state.num1 || !this.state.num2) return;
  const operator = e.target.innerText;
  const res = eval (
    `${this.state.num1} ${operator} ${this.state.num2}`
  );

  this.setState({result: res});
};


resetCalc(e) {
  
  this.setState({
    num:"",
    num2:"",
    result:0
  });

}}

