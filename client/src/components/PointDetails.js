import React from 'react';
import { Container, Header, Card, Image } from 'semantic-ui-react';

export default (props) => {
  if (!props.point) return null;
  return (
    <Container>
      <Header as="h5">{props.info}</Header>
      <Card>
        <Image src={props.point.image_url}/>
        <Card.Content>
          <Card.Header>{props.point.name}</Card.Header>
          <Card.Meta>{props.point.street}</Card.Meta>
          <Card.Description>{props.point.info}</Card.Description>
        </Card.Content>
      </Card>
    </Container>
  );
}
