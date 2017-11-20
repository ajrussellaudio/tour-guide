import React from 'react';
import ToursSelector from '../components/ToursSelector';

export default class ToursContainer extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      tours: []
    };
  }

  componentDidMount() {
    const url = "/api/tours"
    fetch(url)
      .then(response => response.json())
      .then(tours => this.setState({
        tours: tours
      }))
  }

  render() {
    return (
      <ToursSelector tours={this.state.tours} onChange={this.props.onChange}/>
    )
  }
};
