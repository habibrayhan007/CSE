import React from 'react'
import URL from './../../../utils/helpers/URL';
import { Link } from 'react-router-dom';
import supplimentImg from "../../../assets/img/book.png";

export default function SupplimentDash() {
    return (
        <div className="media d-flex justify-content-between">
            <div className=" ">
                <img src={supplimentImg} alt="" className="icon_width" />
            </div>
            <div className="media-body ml-4">
                Suppliment
                <br />
                <Link to={URL.SKILL_LIST}>Start Now</Link>
            </div>
        </div>
    )
}
