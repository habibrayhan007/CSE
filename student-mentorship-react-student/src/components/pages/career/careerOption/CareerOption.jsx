import React from 'react'
import { Col, Row } from 'react-bootstrap';
import Main from '../../../layouts/dashborad/Main';
import ProtectedPage from '../../../layouts/ProtectedPage';
import CareerOptionCard from './CareerOptionCard';
import SECard from './careerOptionName/SECard';

export default function CareerOption() {
    return (
        <ProtectedPage>
            <Main title="Career Option">

                <Row className="mt-2">
                    <Col>
                        <CareerOptionCard title="Software Engineering" ><SECard/></CareerOptionCard>
                    </Col>
                    <Col>
                         <CareerOptionCard title="Networking" ></CareerOptionCard> 
                    </Col>
                    <Col>
                        <CareerOptionCard title="Cyber Secqurity Specialist" ></CareerOptionCard>
                    </Col>
                </Row>
                <Row className="mt-2">
                    <Col>
                        <CareerOptionCard title="Database Administrator" ></CareerOptionCard> 
                    </Col>
                    <Col>
                         <CareerOptionCard title="Information System Manager" ></CareerOptionCard> 
                    </Col>
                    <Col>
                        <CareerOptionCard title="multimedia Programmer" ></CareerOptionCard>
                    </Col>
                </Row>
                <Row className="mt-2">
                    <Col>
                        <CareerOptionCard title="System Analyst" ></CareerOptionCard>
                    </Col>
                    <Col>
                         <CareerOptionCard title="Game Developer" ></CareerOptionCard> 
                    </Col>
                    <Col>
                        <CareerOptionCard title="Hardware Engineer" ></CareerOptionCard>
                    </Col>
                </Row>
                <Row className="mt-2">
                    <Col>
                        <CareerOptionCard title="Network Architect" ></CareerOptionCard>
                    </Col>
                    <Col>
                         <CareerOptionCard title="Web Developer" ></CareerOptionCard> 
                    </Col>
                    <Col>
                        <CareerOptionCard title="Computer and Information Research Science" ></CareerOptionCard>
                    </Col>
                </Row>
                <Row className="mt-2">
                    <Col>
                        <CareerOptionCard title="IT Project Manager" ></CareerOptionCard>
                    </Col>
                    <Col>
                         <CareerOptionCard title="Information Secqurity Analyst" ></CareerOptionCard> 
                    </Col>
                    <Col>
                        <CareerOptionCard title="Hardware Engineer" ></CareerOptionCard>
                    </Col>
                </Row>
                <br />
                <br />
                <h3 className="text-center">Help us to improve our service</h3>
            </Main>
        </ProtectedPage >
    )
}