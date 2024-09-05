import mongoose from "mongoose"; // Te permite conectar mongo con node

const incidentSchema = new mongoose.Schema({
    title: {
        type: String,
        required: true
    },
    description:{
        type: String,
        required: true
    },
    lat:{
        type: Number,
        required: true
    },
    lng:{
        type: Number,
        required: true
    },
    isEmailSent:{
        type:Boolean,
        default: false
    }
});

export const IncidentModel =  mongoose.model("Incident", incidentSchema)