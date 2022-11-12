import React from 'react'
import URL from './../../../utils/helpers/URL';
import { Link } from 'react-router-dom';
import todoImg from "../../../assets/img/todo.png";

export default function TodoDash() {
    return (
        <div className="media d-flex justify-content-between">
            <div className=" ">
                <img src={todoImg} alt="" className="icon_width" />
            </div>
            <div className="media-body ml-4">
                Set your work time
                <br />
                <Link to={URL.TODO_LIST}>Start Now</Link>
            </div>
        </div>
    )
}
