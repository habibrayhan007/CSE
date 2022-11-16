import React from 'react'
import URL from '../../../../../../utils/helpers/URL';
import { Link } from 'react-router-dom';
//import careerImg from "../../../assets/img/career.png";

export default function SECard() {
    return (
        <div className="media d-flex justify-content-between">
            <div className=" ">
                {/* <img src={careerImg} alt="" className="icon_width" /> */}
            </div>
            <div className="media-body ml-4">
                Start Your Software Engineering Career
                <br />
                <button><Link to={URL.SKILL_LIST}>Start Now</Link></button>
            </div>
        </div>
    )
}
