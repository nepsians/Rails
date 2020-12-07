class AllFruit extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
    data:[]
    };
  }

  componentDidMount(){
    fetch('/api/v1/fruits')
    .then(response=> {return response.json()})
    .then(data=>this.setState({data}));
  }

  render() {
    const {data} = this.state;
    return (
      <div>
        <h1> To do: List of Fruits </h1>
        {data.map(data=>(<h1><li>{data.description}</li></h1>))}
      </div>
    );
  }
}
