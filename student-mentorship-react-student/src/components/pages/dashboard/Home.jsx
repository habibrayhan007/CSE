import React from 'react'
import { Col, Row } from 'react-bootstrap';
import Main from '../../layouts/dashborad/Main';
import ProtectedPage from './../../layouts/ProtectedPage';
//import TicketSummary from './TicketSummary';
import DashCard from './DashCard';
import CareerDash from './../career/CareerDash';
import SupplimentDash from '../suppliment/SupplimentDash';
import ConsultancyDash from '../consultancy/ConsultancyDash';
import CourseDash from '../Courses/CourseDash';
import SeminarDash from '../seminar/SeminarDash';
import ContentDash from '../content/ContentDash';


export default function Home() {
    return (
        <ProtectedPage>
            <Main title="Dashboard">

                <Row className="mt-2">
                    <Col>
                        <DashCard title="Career Path" ><CareerDash /></DashCard>
                    </Col>
                    <Col>
                         <DashCard title="Suppliment" > <SupplimentDash/></DashCard> 
                    </Col>
                    <Col>
                        <DashCard title="Soft Skills" />
                    </Col>
                </Row>
                <Row className="mt-2">
                    <Col>
                        <DashCard title="Consultancy" > <ConsultancyDash/> </DashCard> 
                    </Col>
                    <Col>
                         <DashCard title="Courses" > <CourseDash/> </DashCard> 
                    </Col>
                    <Col>
                        <DashCard title="Workshop/Seminar" > <SeminarDash/> </DashCard>
                    </Col>
                </Row>
                <Row className="mt-2">
                    <Col>
                        <DashCard title="Content" > <ContentDash/> </DashCard>
                    </Col>
                    <Col>
                         <DashCard title="To-Do" /> 
                    </Col>
                    <Col>
                        <DashCard title="Submit Ticket" />
                    </Col>
                </Row>
                <br />
                <br />
                <h3 className="text-center">Help us to improve our service</h3>
                {/* <TicketSummary /> */}
            </Main>
        </ProtectedPage >
    )
}
