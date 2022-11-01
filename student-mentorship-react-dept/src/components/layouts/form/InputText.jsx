import React from 'react'
import { Form } from 'react-bootstrap';

export default function InputText({ title, value, name, onChange, disable = false, type }) {
    return (
        <>
            <Form.Group>
                {/* <Form.Label>{title}</Form.Label> */}
                <Form.Control name={name} className="form-controlInput" type={type} placeholder={title} value={value} disabled={disable} onChange={onChange} required={true} />
            </Form.Group>
        </>
    )
}
