import React from 'react';
import { Container, Header } from 'semantic-ui-react';
import PointsMap from '../components/PointsMap';
import PointDetails from './PointDetailsContainer';

export default class TourDetailsContainer extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      selectedPoint: null
    };
    this.handlePointSelected = this.handlePointSelected.bind(this);
  }

  componentWillReceiveProps(nextProps) {
    const url = "/api/tours/" + nextProps.selectedTour;
    fetch(url)
    .then(response => response.json())
    .then(tour => this.setState({tour}))
  }

  handlePointSelected(point) {
    this.setState({ selectedPoint: point })
  }

  render() {
    if (!this.state.tour) return null;
    return (
      <Container fluid>
        {/* <Header as="h1">{this.state.tour.name}</Header> */}
        <PointsMap points={this.state.tour.points} onMarkerClick={this.handlePointSelected} />
        <PointDetails info={this.state.tour.info} tour={this.props.selectedTour} {...this.state} />
      </Container>
    );
  }
}
