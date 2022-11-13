import React from 'react'
import URL from './../../../utils/helpers/URL';
import { Link } from 'react-router-dom';
import courseImg from "../../../assets/img/book.png";

export default function CourseDash() {
    return (
        <div className="media d-flex justify-content-between">
            <div className=" ">
                <img src={courseImg} alt="" className="icon_width" />
            </div>
            <div className="media-body ml-4">
                Start Your Course
                <br />
                <button><Link to={URL.SKILL_LIST}>Start Now</Link></button>
            </div>
        </div>
    )
}
