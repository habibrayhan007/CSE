import React from 'react'
import URL from '../../../../../../utils/helpers/URL';
import { Link } from 'react-router-dom';
//import careerImg from "../../../assets/img/career.png";

export default function NACard() {
    return (
        <div className="media d-flex justify-content-between">
            <div className=" ">
                {/* <img src={careerImg} alt="" className="icon_width" /> */}
            </div>
            <div className="media-body ml-4">
                Start Your Network Architect Career
                <br />
                <button><Link to={URL.CAREER_PATH_VIDEO}>Start Now</Link></button>
            </div>
        </div>
    )
}
