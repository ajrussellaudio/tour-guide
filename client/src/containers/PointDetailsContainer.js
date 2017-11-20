import React from 'react';
import PointDetails from '../components/PointDetails';

export default class PointDetailsContainer extends React.Component {
  state = {}

  componentWillReceiveProps(nextProps) {
    const url = `/api/tours/${nextProps.tour}/points/${nextProps.selectedPoint}`
    fetch(url)
      .then(response => response.json())
      .then(point => this.setState({point}))
  }

  render() {
    return <PointDetails {...this.state} />;
  }
}
