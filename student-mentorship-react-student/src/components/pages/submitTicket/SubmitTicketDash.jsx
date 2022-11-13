import React from 'react'
import URL from '../../../utils/helpers/URL';
import { Link } from 'react-router-dom';
import ticketImg from "../../../assets/img/tickets.png";

export default function SubmitTicketDash() {
    return (
        <div className="media d-flex justify-content-between">
            <div className=" ">
                <img src={ticketImg} alt="" className="icon_width" />
            </div>
            <div className="media-body ml-4">
                Tell us about your problem
                <br />
                <button><Link to={URL.TICKET_LIST}>Start Now</Link></button>
            </div>
        </div>
    )
}
