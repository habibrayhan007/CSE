import React from 'react'
import URL from './../../../utils/helpers/URL';
import { Link } from 'react-router-dom';
import consultancyImg from "../../../assets/img/consultancy.png";

export default function ConsultancyDash() {
    return (
        <div className="media d-flex justify-content-between">
            <div className=" ">
                <img src={consultancyImg} alt="" className="icon_width" />
            </div>
            <div className="media-body ml-4">
                Select Your Consultant
                <br />
                <button><Link to={URL.SKILL_LIST}>Start Now</Link></button>
            </div>
        </div>
    )
}
