import React from 'react'
import { Link } from 'react-router-dom'
import { Table } from 'react-bootstrap'
import URL from '../../../utils/helpers/URL'
import Define from './../../../utils/helpers/Define';
import moment from 'moment';


export default function TicketTable({ type, ticket_list }) {

    return (
        <div>
            {ticket_list.length > 0 ? <>
                <Table striped bordered hover responsive>
                    <thead>
                        <tr>
                            <th>ID#</th>
                            <th>Student ID#</th>
                            <th>Ticket Title</th>
                            <th>Ticket Status</th>
                            {type === Define.TICKET_SNOOZED ? <th>Reschedule Reason & Date</th> : ""}
                            <th>Created At</th>
                            <th>Option</th>
                        </tr>
                    </thead>
                    <tbody >
                        {ticket_list.map(item => {
                            return (
                                <tr key={item.id}>
                                    <td>{item.id}</td>
                                    <td>{item.student_id}</td>
                                    <td>{item.ticket_title}</td>
                                    <td>{item.ticket_state}</td>
                                    {item.ticket_state === Define.TICKET_SNOOZED ? <td>{item.reschedule_reason + " , Date: " + moment(item.reschedule_date).format(Define.FORMAT_DATE)}</td> : ""}
                                    <td>{moment(item.created_at).format(Define.FORMAT_DATE)}</td>
                                    <td>{<Link to={URL.TICKET_LIST + "/" + item.ticket_state + "/" + item.id} >View </Link>}</td>
                                </tr>
                            )
                        })}
                    </tbody>
                </Table>
            </> : <div><h3 className="text-center">No Ticket Found</h3></div>
            }

        </div >
    )
}
