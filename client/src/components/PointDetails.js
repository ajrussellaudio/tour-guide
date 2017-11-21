import React from 'react';
import { Container, Header, Card, Image } from 'semantic-ui-react';

function paragraphs(text) {
  return text.split("\n\n").map((paragraph, i) => {
    return <p key={i}>{paragraph}</p>
  });
}

export default (props) => {
  if (!props.point) return null;
  return (
    <Container>
      <Card fluid>
        <Image src={props.point.image_url}/>
        <Card.Content>
          <Card.Header>{props.point.name}</Card.Header>
          <Card.Meta>{props.point.street}</Card.Meta>
          <Card.Description>{paragraphs(props.point.info)}</Card.Description>
        </Card.Content>
      </Card>
    </Container>
  );
}
