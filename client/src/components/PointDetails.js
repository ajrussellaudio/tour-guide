import React from 'react';
import { Card, CardMedia, CardTitle, CardText } from 'material-ui';

function paragraphs(text) {
  if (!text) return null;
  return text.split("\n\n").map((paragraph, i) => {
    return <p key={i}>{paragraph}</p>
  });
}

export default (props) => {
  if (!props.point) return null;

  const title = (point) => {
    const cardTitle = <CardTitle title={point.name} subtitle={point.street}/>
    if (point.image_url) {
      return (
        <CardMedia overlay={cardTitle}>
          <img src={point.image_url} alt={point.name}/>
        </CardMedia>
      )
    } else {
      return cardTitle
    }
  }

  return (
    <Card style={{width: 600}}>
      { title(props.point) }
      <CardText>{paragraphs(props.point.info)}</CardText>
    </Card>
  );
}
