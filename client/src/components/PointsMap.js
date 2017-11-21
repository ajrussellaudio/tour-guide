import React from 'react';
import { Map, Marker, TileLayer } from 'react-leaflet';
import { Paper } from 'material-ui';

function extractPosition(point) {
  return {
    lat: parseFloat(point.latitude),
    lng: parseFloat(point.longitude)
  }
}

export default (props) => {
  const markers = props.points.map(point => {
    return (
      <Marker
        position={extractPosition(point)}
        onClick={() => props.onMarkerClick(point.id)}
        key={point.id}/>
    )
  })

  const style = {
    height: 400,
    width: 400,
    margin: 0,
    display: 'inline-block'
  }

  return (
    <Paper style={style} zDepth={3}>
      <Map
        bounds={props.points.map(point => extractPosition(point))}
        boundsOptions={{padding: [10, 10]}}>
        <TileLayer
          url='http://{s}.basemaps.cartocdn.com/light_all/{z}/{x}/{y}{r}.png'
          attribution='&copy; <a href="http://osm.org/copyright">OpenStreetMap</a> contributors'
        />
        {markers}
      </Map>
    </Paper>
  )
}
