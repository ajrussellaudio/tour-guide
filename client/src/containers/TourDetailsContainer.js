import React from 'react';
import { Container, Header } from 'semantic-ui-react';
import PointsList from '../components/PointsList';

export default class TourDetailsContainer extends React.Component {
  constructor(props) {
    super(props);
    this.state = {};
  }

  componentWillReceiveProps(nextProps) {
    const url = "/api/tours/" + nextProps.selectedTour;
    fetch(url)
      .then(response => response.json())
      .then(tour => this.setState({tour}))
  }

  render() {
    if (!this.state.tour) return null;
    return (
      <Container id="tour-details">
        <Header as="h1">{this.state.tour.name}</Header>
        <Header as="h3">{this.state.tour.info}</Header>
        <PointsList points={this.state.tour.points}/>
      </Container>
    );
  }
}
