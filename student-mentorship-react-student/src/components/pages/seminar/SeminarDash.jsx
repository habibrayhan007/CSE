import React from 'react'
import URL from './../../../utils/helpers/URL';
import { Link } from 'react-router-dom';
import seminarImg from "../../../assets/img/seminar.png";

export default function SeminarDash() {
    return (
        <div className="media d-flex justify-content-between">
            <div className=" ">
                <img src={seminarImg} alt="" className="icon_width" />
            </div>
            <div className="media-body ml-4">
                See upcoming Workshop/Seminar
                <br />
                <Link to={URL.SKILL_LIST}>Start Now</Link>
            </div>
        </div>
    )
}
