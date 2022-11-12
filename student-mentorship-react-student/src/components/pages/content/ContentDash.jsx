import React from 'react'
import URL from './../../../utils/helpers/URL';
import { Link } from 'react-router-dom';
import contentImg from "../../../assets/img/content.png";

export default function ContentDash() {
    return (
        <div className="media d-flex justify-content-between">
            <div className=" ">
                <img src={contentImg} alt="" className="icon_width" />
            </div>
            <div className="media-body ml-4">
                Start Writing Content
                <br />
                <Link to={URL.SKILL_LIST}>Start Now</Link>
            </div>
        </div>
    )
}
