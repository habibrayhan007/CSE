import React from 'react'
import { Col, Row } from 'react-bootstrap';
import Main from '../../../layouts/dashborad/Main';
import ProtectedPage from '../../../layouts/ProtectedPage';
import CareerOptionCard from './CareerOptionCard';
import SECard from './careerOptionName/softwareEngineering/SECard';
import NetCard from './careerOptionName/networking/NetCard';
import CSCard from './careerOptionName/cyberSecqurity/CSCard';
import DBAdminCard from './careerOptionName/databseAdministrator/DBAdminCard';
import InfoSystemCard from './careerOptionName/informationSystem/InfoSystemCard';
import MPCard from './careerOptionName/multimediaProgrammer/MPCard';
import SACard from './careerOptionName/systemAnalyst/SACard';
import GDCard from './careerOptionName/gameDeveloper/GDCard';
import HECard from './careerOptionName/hardwareEngineer/HECard';
import WDCard from './careerOptionName/webDeveloper/WDCard';
import CIRCard from './careerOptionName/ComputerAndInformationResearch/CIRCard';
import ITPMCard from './careerOptionName/ITProjectManager/ITPMCard';
import ISACard from './careerOptionName/informationSecqurityAnalyst/ISACard';
import ADCard from './careerOptionName/androidAppDeveloper/ADCard';

export default function CareerOption() {
    return (
        <ProtectedPage>
            <Main title="Career Option">

                <Row className="mt-2">
                    <Col>
                        <CareerOptionCard title="Software Engineering" ><SECard/></CareerOptionCard>
                    </Col>
                    <Col>
                         <CareerOptionCard title="Networking" ><NetCard/></CareerOptionCard> 
                    </Col>
                    <Col>
                        <CareerOptionCard title="Cyber Secqurity Specialist" > <CSCard/> </CareerOptionCard>
                    </Col>
                </Row>
                <Row className="mt-2">
                    <Col>
                        <CareerOptionCard title="Database Administrator" > <DBAdminCard/> </CareerOptionCard> 
                    </Col>
                    <Col>
                         <CareerOptionCard title="Information System Manager" > <InfoSystemCard/> </CareerOptionCard> 
                    </Col>
                    <Col>
                        <CareerOptionCard title="multimedia Programmer" > <MPCard/> </CareerOptionCard>
                    </Col>
                </Row>
                <Row className="mt-2">
                    <Col>
                        <CareerOptionCard title="System Analyst" > <SACard/> </CareerOptionCard>
                    </Col>
                    <Col>
                         <CareerOptionCard title="Game Developer" > <GDCard/> </CareerOptionCard> 
                    </Col>
                    <Col>
                        <CareerOptionCard title="Hardware Engineer" > <HECard/> </CareerOptionCard>
                    </Col>
                </Row>
                <Row className="mt-2">
                    <Col>
                        <CareerOptionCard title="Network Architect" > <NetCard/> </CareerOptionCard>
                    </Col>
                    <Col>
                         <CareerOptionCard title="Web Developer" > <WDCard/> </CareerOptionCard> 
                    </Col>
                    <Col>
                        <CareerOptionCard title="Computer and Information Research " > <CIRCard/> </CareerOptionCard>
                    </Col>
                </Row>
                <Row className="mt-2">
                    <Col>
                        <CareerOptionCard title="IT Project Manager" > <ITPMCard/> </CareerOptionCard>
                    </Col>
                    <Col>
                         <CareerOptionCard title="Information Secqurity Analyst" > <ISACard/> </CareerOptionCard> 
                    </Col>
                    <Col>
                        <CareerOptionCard title="Android App Developer" > <ADCard/> </CareerOptionCard>
                    </Col>
                </Row>
                <br />
                <br />
                <h3 className="text-center">Help us to improve our service</h3>
            </Main>
        </ProtectedPage >
    )
}