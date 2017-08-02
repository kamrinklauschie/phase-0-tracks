classroom = {
    front_row: {
        student_type: 'Nerds',
        seats_available: {
            total_seats: 5,
            seats_available: 2
        },
        student_names: [
            "Kam", 
            "Sar",
            "Anthony"
        ]
    },
    middle_row: {
       student_type: 'Goths',
        seats_available: {
            total_seats: 3,
            seats_available: 1
        },
        student_names: [
            "Mark", 
            "Shambhavi",
            "Jenny"
        ]
    },
    back_row: {
        student_type: 'Jocks',
        seat_info: {
            total_seats: 4,
            seats_available: 1
        },
        student_names: [
            "Walker",
            "Marie",
            "Max"
        ]
    }
}

classroom[:front_row][:student_names]
classroom[:back_row][:seat_info][:seats_available]