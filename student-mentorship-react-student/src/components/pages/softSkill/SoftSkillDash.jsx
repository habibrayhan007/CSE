import React from 'react'
import URL from './../../../utils/helpers/URL';
import { Link } from 'react-router-dom';
import sskillImg from "../../../assets/img/soft-skill.png";

export default function SoftSkillDash() {
    return (
        <div className="media d-flex justify-content-between">
            <div className=" ">
                <img src={sskillImg} alt="" className="icon_width" />
            </div>
            <div className="media-body ml-4">
                Add Your Skill
                <br />
                <button><Link to={URL.SKILL_LIST}>Start Now</Link></button>
            </div>
        </div>
    )
}
